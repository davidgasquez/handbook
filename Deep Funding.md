# Deep Funding

The goal of [Deep Funding](https://deepfunding.org/) is to develop a system that can allocate resources to public goods with a level of accuracy, fairness, and open access that rivals how private goods are funded by markets, ensuring that high-quality open-source projects can be sustained. Traditional price signals don't exist, so we need "artificial markets" that can simulate the information aggregation properties of real markets while being resistant to the unique failure modes of public goods funding.

In Deep Funding, multiple mechanisms work together:

1. A mechanism that generates an up-to-date and comprehensive DAG of relevant dependencies given a source node.
2. Another mechanism that fills the graph with relevant weights. This might be broken down into:
  1. Collecting human judgement accurately.
  2. Scaling Human Judgement to fill the rest of the graph. This can be something like a [prediction market](https://ethresear.ch/t/deep-funding-a-prediction-market-for-open-source-dependencies/23101), an AI model, ... Basically anything that predicts the human judgement.
3. Reward Distribution.

This problem touches data, mechanism design, and open source! Each layer can be optimized and iterated independently.

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

## Ideas

- Use juror data as the human feedback side of RLHF
  - Mix this with a [social choice perspective](https://iclr.cc/virtual/2024/invited-talk/21799). Benchmarks are the aggregation of "votes" to choose the best models. Arrow's impossibility theorem works here though!
  - Create models/mechanisms that fill the graph using whatever techniques they want
  - Then, evaluate (or even tune) these models based on the juror data
  - Jurors vote on the models themselves by looking at their results and comparing models between them
  - Split pairs into calibration and test sets (or do K-fold CV), fit each mechanism's 𝜏 on calibration, then compare negative log-likelihood on test. Report accuracy/Brier and use paired bootstrap to see if gap is statistically meaningful.
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

## Open Problems

- Unreliable juror evidence (low statistical power & consistency)
  - Very few edges achieve statistical significance
  - The noise makes any downstream model "garbage‑in, garbage‑out"
  - How to incentivize good jurors?
  - How to deal with messy jurors?
  - Intensity scoring in pairwise comparisons
    - Asking jurors "how much better" introduces order‑dependence and scale mismatch (e.g., 999× vs 100× for the same comparison)
  - Are there beter methods to derive weights from [noisy pairwise comparisons](https://arxiv.org/abs/2510.09333) ([from multiple annotators](https://arxiv.org/abs/1612.04413))?
- Dependency graph accuracy, completeness, and adversarial behavior
  - How to keep the graph up to date?
- Process transparency, openness, and reproducibility
  - Who chooses the aggregation formula?
    - Why not Bradley-Terry (RLHF style)?
  - What is the best metric to compute distances?
  - The process is sensitive to irrelevant changes (e.g: updating some parameter on the data pipeline changes the leaderboard considerably)
- Temporal drift (dependencies and preferences)
  - Snapshots get out of date
  - Jurors evaluate projects that have changed
- Scalability to large graphs
  - With hundreds of nodes, assigning a reasonable score to a random project requires local link structure...
  - How to [speed up the data gathering process](https://projecteuclid.org/journals/annals-of-statistics/volume-47/issue-6/Active-ranking-from-pairwise-comparisons-and-when-parametric-assumptions-do/10.1214/18-AOS1772.pdf)?
- Incentive design for participants
  - Static, concentrated rewards don’t encourage edge‑case discovery or diversity of modeling approaches.
- Fitness of the Deep Funding approach
  - How is the final distribution evaluated?
  - Falsifiable hypothesis to verify the weights are correct
  - If the goal of pattern recognition was to classify objects in a scene, it made sense to score an algorithm by how often it succeeded in doing so. The goal of Deep Funding is to allocate resources to public goods in a way that rivals how private goods are funded, how do we measure success?
