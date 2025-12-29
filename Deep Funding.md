# Deep Funding

The goal of [Deep Funding](https://deepfunding.org/) is to develop a system that can allocate resources to public goods with a level of accuracy, fairness, and open access that rivals how private goods are funded by markets, ensuring that high-quality open-source projects can be sustained. Traditional price signals don't exist, so we need "artificial markets" that can simulate the information aggregation properties of real markets while being resistant to the unique failure modes of public goods funding. [Deep Funding is an Impact Evaluator](https://hackmd.io/@dwddao/HypnqpQKke).

In Deep Funding, multiple mechanisms (involving data, mechanism design, and open source) work together. Each layer can be optimized and iterated independently.

1. A mechanism that generates an up-to-date and comprehensive DAG of relevant dependencies given a source node
2. A mechanism that fills the graph with relevant weights. These weights represent the latent item utilities. There can be many ways of getting to them!
  - Aggregating human preferences (polls, pairwise comparisons, ...)
  - Using prediction markets
  - Getting weights from an AI model
  - Collaborative Filtering
  - Having experts fill weights manually
3. A mechanism that takes that weight vector as input and distributes money to the projects

Deep Funding can be viewed as a [Software-2.0](https://karpathy.medium.com/software-2-0-a64152b37c35) approach to public-goods allocation. Instead of manually designing funding rules, evaluation processes, and governance structures, define an objective function, tests, eval sets, and scoring criteria. Then, let any kind of mechanism (AI models, prediction markets, statistical algorithms, human raters, etc.) compete to solve them. The human work shifts from hand-crafting decision procedures to specifying what "good allocation" looks like and collecting high-quality data. Everything else becomes an optimization problem where participants will try to produce weight predictions that best fit the data. Deep Funding can be seen as **an evolving benchmark suite for truthfully estimating public-goods value**, and progress comes from iterating on the evals rather than hard-coding the system itself.

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

1. A list of projects is chosen. This is usually provided by an external entity or process (e.g: the [best model from the ML competition](https://cryptopond.xyz/modelfactory/detail/2564617) chooses the next 100 projects). So far a DAG/graph structure has not been needed since all projects have been compared for their impact on the "Ethereum Ecosystem".
  - In its current shape, the graph's vertices are projects and the edges are the relative impact of each project in its parent. The same approach could be used for [anything that matches the graph](https://x.com/VitalikButerin/status/1981946493780345303) shape (e.g: science research).
2. Jurors do pairwise comparisons between projects. An aggregation method is chosen (Huber loss, L2 norm in log space, ...) to derive the "ground truth" relative project weights.
3. An ML competition and [a Prediction Market](https://ethresear.ch/t/deep-funding-a-prediction-market-for-open-source-dependencies/23101) are kicked off. Modelers and traders are evaluated against a holdout set of pairwise comparisons.
4. Participants are rewarded based on how close they get to the "jurors' ground truth".

### Open Problems

After participating in the ML competition and Prediction Market, and doing a few deep dives into the data and methodology, I think these are the main open problems.

- **Juror Reliability**
  - So far, expert juror's pairwise comparisons have been inconsistent, noisy, and low in statistical power
  - Getting comparisons has been quite expensive in time and resources
  - The jury (secret) pool diversity is not guaranteed
  - Asking jurors "how much better" introduces order‑dependence and scale mismatch
  - Messy jurors have [disproportionate impact on the weights](https://davidgasquez.github.io/deepfunding-trial-data-analysis/#-robustness-checks)
  - Weights are not consistent due to the limited amount of data collected and the variance on it
  - Large graphs (hundreds of projects) make getting accurate weights from the pairwise evaluation infeasible
    - E.g. GG24 round has ~100 projects and [would need more than 3000 "actively sampled" comparisons to get to a relative error of 10%](https://arxiv.org/pdf/1505.01462)
    - This approach/paradigm requires more training examples than jurors can produce in a reasonable span of time
- **Mechanism Settings**
  - Some parameters have a large effect and haven't been adjusted
  - The aggregation formula (huber, log loss, bradley terry, ...) has a very large impact on both modelers/traders and project rewards
  - Need more process around who chooses the aggregation formula and why it is chosen
  - In the pilot (huber loss), some projects got weights on a scale jurors didn't feel reasonable (e.g: EIPs repo got 30%)
  - The prediction market might cause good modelers to not participate as time of entry is more important than having a good model
  - There might be an incentive to game the market at the last minute
    - Might be worth it to increase your project share given the money distribution
- **Weights Evaluation**
  - [How do we measure success?](https://davidgasquez.com/weight-allocation-mechanism-evals/) If the goal of pattern recognition was to classify objects in a scene, it made sense to score an algorithm by how often it succeeded in doing so. What is the equivalent for Deep Funding? What is the [metric we are optimizing](https://mlhp.stanford.edu/src/chap4.html#sec-metric-elicitation)?
  - Once the weights are set, there isn't [a process to evaluate how "fit" those are](https://davidgasquez.com/weight-allocation-mechanism-evals/)
    - E.g: the current idea is to gather a connected graph of pairwise comparisons, why not use that to reward projects directly and skip the Prediction Market?
  - We need falsifiable hypotheses to validate Deep Funding is "better"
- **Graph Maintenance**
  - If the process takes a few weeks, the weights might change significantly (e.g: a project releases a major version)
  - Jurors are also affected by temporal drift and their preferences evolve over time

## Ideas

- An alternative is to take an ([inspired by RLHF](https://www.itai-shapira.com/pdfs/pairwise_calibrated_rewards_for_pluralistic_alignment.pdf)) approach. **Use only a few significant data points to choose and reward the final models** instead of deriving weights for the entire set of children/dependencies of a project. Resolve the market with only a few, well-tested pairs!
- Fix weight distributions (Zipf law) and make modelers/jurors focus on predicting the rank. Pick the model that aligns the most with the pairwise data collected.
  - Win rates can be derived from pairwise comparisons
- Lean on the [[Pairwise Comparisons]] playbook (binary questions over intensity, active sampling, filtering noisy raters) for any human labeling.
- Instead of one canonical graph, allow different stakeholder groups (developers, funders, users) to maintain their own weight overlays on the same edge structure. Aggregate these views using quadratic or other mechanisms
  - If there is a plurality of these "dependency graphs" (or just different set of weights), the funding organization can choose which one to use! The curators gain a % of the money for their service. This creates a market-like mechanism that incentivizes useful curation.
- Let the dependent set their weight percentage if they're around
- Let the applicants apply with wathever "abstractions level" they want (e.g: a whole framework, one repository, an entire organization). Rely on pairwise comparisons to resolve conflicts.
- Have hypercerts or similar. The price of these (total value) sets the weights across dependencies (`numpy`'s certificates trade at 3x the price of a utility library, the edge weight reflects this)
- If there are reviewers/validators/jurors, need to be public so they have some sort of reputation
  - Reputation system for Jurors
    - E.g: whose score is closer to the final one. This biases towards averages
    - Use graph algorithms ([MaxFlow](https://maxflow.one/how-it-works)) to weight jurors. This trust layer makes all human inputs (juror ratings, edge proposals, curation) sybil-resistant and accountable. People don't get "one vote per account": they get influence proportional to how much the network trusts them, based on who publicly vouches for whom. Vouches are binary and simple, but they're recursively weighted by the voucher's own trust and penalized if someone vouches for too many others, which makes spam and fake networks costly.
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
- Projects can opt out of the default distribution and declare a custom one for dependencies. Organizers can allow or ignore that
- Self-declaration needs a "contest process" to resolve issues/abuse
- Harberger Tax on self declarations? Bayesian Truth Serum for Weight Elicitation?
  - Projects continuously auction off "maintenance contracts" where funders bid on keeping projects maintained. The auction mechanism reveals willingness-to-pay for continued operation. Dependencies naturally emerge as projects that lose maintenance see their dependents bid up their contracts
- [Explore Rank Centrality](https://arxiv.org/pdf/1209.1688). Theoretical and empirical results show that with a graph that has a decent spectral gap `O(n log(𝑛))` pair samples suffice for accurate scores and ranking.
- Report which mechanism is closer (distance metric) to each juror
- Reward maintainers of the actual projects for pairwise choices
