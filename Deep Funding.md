# Deep Funding

The goal of [Deep Funding](https://deepfunding.org/) is to develop a system that can allocate resources to public goods with a level of accuracy, fairness, and open access that rivals how private goods are funded by markets, ensuring that high-quality open-source projects can be sustained. Traditional price signals don't exist, so we need "artificial markets" that can simulate the information aggregation properties of real markets while being resistant to the unique failure modes of public goods funding.

In Deep Funding, multiple mechanisms work together:

1. A mechanism that generates an up-to-date and comprehensive DAG of relevant dependencies given a source node
2. A mechanism that fills the graph with relevant weights. These weights represent the latent item utilities. There can be many ways of getting to them!
  1. Aggregating human preferences (polls, pairwise comparisons, ...)
  2. Using prediction markets
  3. Getting weights from an AI model
  4. Having experts fill weights manually
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
  - [How do we measure success?](https://davidgasquez.com/weight-allocation-mechanism-evals/) If the goal of pattern recognition was to classify objects in a scene, it made sense to score an algorithm by how often it succeeded in doing so. What is the equivalent for Deep Funding?
  - Once the weights are set, there isn't [a process to evaluate how "fit" those are](https://davidgasquez.com/weight-allocation-mechanism-evals/)
    - E.g: the current idea is to gather a connected graph of pairwise comparisons, why not use that to reward projects directly and skip the Prediction Market?
  - We need a falsifiable hypotheses to validate Deep Funding is "better"
- **Graph Maintenance**
  - If the process takes a few weeks, the weights might change significally (e.g: a project releases a major version)
  - Jurors are also affected by temporal drift and their preferences evolve over time

## Ideas

- There are beter methods to derive weights from [noisy pairwise comparisons](https://arxiv.org/abs/2510.09333) ([from multiple annotators](https://arxiv.org/abs/1612.04413))
- Use active ranking or dueling bandits to [speed up the data gathering process](https://projecteuclid.org/journals/annals-of-statistics/volume-47/issue-6/Active-ranking-from-pairwise-comparisons-and-when-parametric-assumptions-do/10.1214/18-AOS1772.pdf)
- Use juror data as the human feedback side of RLHF
  - Mix this with a [social choice perspective](https://iclr.cc/virtual/2024/invited-talk/21799). Benchmarks are the aggregation of "votes" to choose the best models. Arrow's impossibility theorem works here though!
  - Create models/mechanisms that fill the graph using whatever techniques they want
  - Then, evaluate (or even tune) these models based on the juror data
  - Jurors vote on the models themselves by looking at their results and comparing models between them
  - Split pairs into calibration and test sets (or do K-fold CV), fit each mechanism's 𝜏 on calibration, then compare negative log-likelihood on test. Report accuracy/Brier and use paired bootstrap to see if gap is statistically meaningful
- If anyone can rate you can remove low quality raters with heuristics or pick only the best N raters (crowd BT)
- Let the dependent set their weight percentage if they're around
- The most elegant mechanism is probably something like a [prediction market](https://docs.fileverse.io/0x7248Fe92e7087d02D3604396b057295026FC62A1/49#key=DgfQgJ-bCAVr0NNFU0vp1HNW_Sh23GVieRmA_QXsDbHIRVyhv37c1XnOBM8lW6PT)
  - Solves the current issues there of missing dependencies (due to technical issues or because they're more abstract), preference drift, adversarial situations, ...
  - Replaces the "Collecting accurate project dependencies" issue with an ongoing market
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
- Graph Completion (Scaling Human Judgement) might be done in different ways:
  - Constraint-Based Optimization (`scipy.optimize.minimize`)
  - Collaborative Filtering (like a recommendation system where you're predicting weights between nodes)
  - Matrix Factorization (NMF)
  - Prediction Markets
  - AIs
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
