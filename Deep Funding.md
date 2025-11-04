# Deep Funding

The goal of [Deep Funding](https://deepfunding.org/) is to develop a system that can allocate resources to public goods with a level of accuracy, fairness, and open access that rivals how private goods are funded by markets, ensuring that high-quality open-source projects can be sustained. Traditional price signals don't exist, so we need "artificial markets" that can simulate the information aggregation properties of real markets while being resistant to the unique failure modes of public goods funding.

In Deep Funding, multiple mechanisms work together:

1. A mechanism that generates an up-to-date and comprehensive DAG of relevant dependencies given a source node
2. A mechanism that fills the graph with relevant weights. These weights represent the latent item utilities. There can be many ways of getting to them!
  - Aggregating human preferences (polls, pairwise comparisons, ...)
  - Using prediction markets
  - Getting weights from an AI model
  - Collaborative Filtering
  - Having experts fill weights manually
3. A mechanism that takes that weight vector as input and distributes money to the projects

This problem touches data, mechanism design, and open source! Also, each layer can be optimized and iterated independently.

In its current shape, the graph's vertices are projects and the edges are the relative impact of each project in its parent. The same approach could be used for anything that matches the graph shape (e.g: science research).

## Desired Properties

- Credible Neutrality Through Transparent and Simple Mechanisms
- Comparative Truth-Seeking Over Absolute Metrics
- Plurality-Aware Preference Aggregation
- Collusion-Resistant Architecture
- Practical Scalability
- Credible Exit and Forkability
- Works on Public Existing Infrastructure
- Decentralized and Market-Like Mechanisms to Incentivize Useful Curation
  - Dependencies reveal themselves through market mechanisms rather than being declared
  - Skin in the Game. Participants have something to lose from bad assessments
- Project Independence (no need to participate in the process to get funded)

## Current Approach

So far, Deep Funding has been implemented like this:

1. A list of projects is choosen. This is usually provided by an external entity or process (e.g: the [best model from the ML competition](https://cryptopond.xyz/modelfactory/detail/2564617) choose the next 100 projects). So far a DAG/graph structure has not been needed since all projects have been compared for their impact on the "Ethereum Ecosystem".
2. Jurors do pairwise comparisons between projects. An aggregation method is choosen (Huber loss, L2 norm in log space, ...) to derive the "ground truth" relative project weights.
3. An ML competition and [a Prediction Market](https://ethresear.ch/t/deep-funding-a-prediction-market-for-open-source-dependencies/23101) are kicked off. Modelers and traders are evaluated against a holdout set of pairwise comparisons.
4. Partitipants are rewarded based on how close they get to the "jurors' ground truth".

### Open Problems

After participating in the ML competition and Prediction Market, and doing a few deep dives into the data and methodology, I think these are the main open problems.

- **Juror Reliability**
  - So far, expert juror's pairwise comparisons have been inconsistent, noisy, and low in statistical power
  - Getting comparisons has been quite expensive in time and resources
  - Asking jurors "how much better" introduces order‑dependence and scale mismatch
  - Messy jurors have [disproportionate impact on the weights](https://davidgasquez.github.io/deepfunding-trial-data-analysis/#-robustness-checks)
  - Weights are not consistent due to the limited amount of data collected and the variance on it
  - Large graphs (hundreds of projects) make getting accurate weights from the pairwise evaluation infeasible
- **Mechanism Settings**
  - Some parameters have a large effect and haven't been adjusted
  - The aggregation formula (huber, log loss, bradley terry, ...) has a very large impact on both modelers/traders and project rewards
  - Need more process around who chooses the aggregation formula and why is choosen
  - In the pilot (huber loss), some projects got weights on a scale jurors didn't feel reasonable (e.g: EIPs repo got 30%)
  - The prediction market might cause good modelers to not participate as time of entry is more important than having a good model
- **Weights Evaluation**
  - [How do we measure success?](https://davidgasquez.com/weight-allocation-mechanism-evals/) If the goal of pattern recognition was to classify objects in a scene, it made sense to score an algorithm by how often it succeeded in doing so. What is the equivalent for Deep Funding? What is the [metric we are optimizing](https://mlhp.stanford.edu/src/chap4.html#sec-metric-elicitation)?
  - Once the weights are set, there isn't [a process to evaluate how "fit" those are](https://davidgasquez.com/weight-allocation-mechanism-evals/)
    - E.g: the current idea is to gather a connected graph of pairwise comparisons, why not use that to reward projects directly and skip the Prediction Market?
  - We need a falsifiable hypotheses to validate Deep Funding is "better"
- **Graph Maintenance**
  - If the process takes a few weeks, the weights might change significally (e.g: a project releases a major version)
  - Jurors are also affected by temporal drift and their preferences evolve over time

## Ideas

### Alternative Approach

Given the current open problems, this is interesting and alternative way ([inspired by RLHF](https://www.itai-shapira.com/pdfs/pairwise_calibrated_rewards_for_pluralistic_alignment.pdf)) of running a Deep Funding "round". The gist of the idea is to **use only a few significant data points to choose and reward the final models** instead of deriving weights for the entire set of childs/dependencies of a project. Resolve the market with only a few, well-tested pairs!

Like in the current setup, a DAG of projects is needed. The organizers publish that and also an encoded list of projects that will be evaluated by Jurors. Participants can only see the DAG, the "evaluated projects" will be revealed at the end.

Once participans have worked on their models and send/trade their predictions, the "evaluated project" list is revealed and only those projects are used to evaluate predictions. Best strategy is to price truthfully on the unknown benchmark subset. The question here is... how can we evaluate only a few projects without jurors giving a connected graph to the rest of the projects? You can use metrics like the [Brier score](https://en.wikipedia.org/wiki/Brier_score) or using [calibrated Bradley Terry](https://www.itai-shapira.com/pdfs/pairwise_calibrated_rewards_for_pluralistic_alignment.pdf) to evaluating a pre-given mechanism's scores ([in that case you're fitting just a single global scale or temperature parameter to minimize negative log-likelihood](https://apxml.com/courses/rlhf-reinforcement-learning-human-feedback/chapter-3-reward-modeling-human-preferences/reward-model-calibration))!

Once the best model is chosen, the same pairwise comparisons can be used [to adjust the scale of the weight distribution](https://proceedings.mlr.press/v70/guo17a/guo17a.pdf). That means the market resolution uses only the subset (for payouts to traders) but the funding distribution uses the model's global ranking with its probabilities calibrated to the subset via a single scalar 𝑎 that pins the entire slate to the same scale that was verified by real judgments. The jurors pairwise comparisons can even be "merged" with the best model to incorporate all data in there.

The task of the organizers is to [gather pairwise comparisons to make this subset significant](https://arxiv.org/pdf/1505.01462), which is much simpler and feasible than doing it so for the entire dependencies of a node (can be 128). For example, we can estimate that to get a 10% relative error on the weights, we would need ~600 [efficiently sampled pairs](https://arxiv.org/abs/2302.13507). Compare that with the 2000 needed to get a 20% relative error on 128 items.

### More Ideas

- [Detect and correct for evaluators' bias in the task of ranking items from pairwise comparisons](https://link.springer.com/article/10.1007/s10618-024-01024-z)
- There are beter and more modern methods to derive weights from [noisy pairwise comparisons](https://arxiv.org/abs/2510.09333) ([from multiple annotators](https://arxiv.org/abs/1612.04413))
- Use active ranking or dueling bandits to [speed up the data gathering process](https://projecteuclid.org/journals/annals-of-statistics/volume-47/issue-6/Active-ranking-from-pairwise-comparisons-and-when-parametric-assumptions-do/10.1214/18-AOS1772.pdf)
- Do some post processing to the weights:
  - Report accuracy/Brier and use paired bootstrap to see if gap is statistically meaningful
  - If gaps are not statistically meaninfull, bucket rewards (using Zipf's law) so it feels fair
- If anyone (or jury selection is more relaxed) can rate you can remove low quality raters with heuristics or pick only the best N raters (crowd BT)
- Let the dependent set their weight percentage if they're around
- Instead of one canonical graph, allow different stakeholder groups (developers, funders, users) to maintain their own weight overlays on the same edge structure. Aggregate these views using quadratic or other mechanisms
- If there is a plurality of these "dependency graphs" (or just different set of weights), the funding organization can choose which one to use! The curators gain a % of the money for their service. This creates a market-like mechanism that incentivizes useful curation.
- Have hypercerts or similar. The price of these (total value) sets the weights across dependencies (`numpy`'s certificates trade at 3x the price of a utility library, the edge weight reflects this)
- If there are reviewers/validators/jurors, need to be public so they have some sort of reputation
  - Reputation system / ELO for Jurors whose score is closer to the final one. This biases towards averages
  - Account for jurors' biases with Hierarchical Bradley Terry or similar
  - Allow anyone to be a juror, select jurors based on their skills
- Stake-based flow:
  - Anyone can propose a new edge, and anyone can stake money on that. If they get funding, you get rewarded. Could also be quadratic voting style where you vouch for something.
  - Should the edge weights/stake decay over time unless refreshed by new attestations?
  - Quadratic funding or similar for the stake weighting to avoid plutocracy
  - Anyone can challenge an edge by staking against it
  - Human attestations from project maintainers or a committee
- Doing [something similar to Ecosyste.ms](https://blog.ecosyste.ms/2025/04/04/ecosystem-funds-ga.html) might be a better way
  - A curated set of repositories. You fund that dependency graph + weights.
  - Could be done looking at the funding or license (if there is a license to declare your deps).
- Run the mechanism on "eras" / batches so the graph changes and the weights evolve.
- How to expand to a graph of dependencies that are not only code?
  - Academic papers and research that influenced design decisions
  - Cross-language inspiration (e.g., Ruby on Rails influencing web frameworks in other languages)
  - Standards and specifications that enable interoperability
- Allow projects to "insure" against their critical dependencies disappearing or becoming unmaintained. This creates a market signal for dependency risk and could fund maintenance of critical-but-boring infrastructure
- Composable Evaluation Criteria
  - Rather than a single weighting mechanism, allow different communities to define their own evaluation functions (security-focused, innovation-focused, stability-focused) that can be composed. This enables plurality while maintaining comparability
- Create a bounty system where anyone can claim rewards for discovering hidden dependencies (similar to bug bounties)
  - This crowdsources the graph discovery problem and incentivizes thorough documentation.
- Projects can opt out of the default distribution and declare a custom one. Organizers can allow or ignore that
- Self declaration needs a "contest process" to resolve issues/abuse.
- Harberger Tax on self declarations? Bayesian Truth Serum for Weight Elicitation?
  - Projects continuously auction off "maintenance contracts" where funders bid on keeping projects maintained. The auction mechanism reveals willingness-to-pay for continued operation. Dependencies naturally emerge as projects that lose maintenance see their dependents bid up their contracts
