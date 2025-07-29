# Impact Evaluators

It's hard to do [[Public Goods Funding]], open-source software, research, etc. that don't have a clear, immediate financial return, especially high-risk/high-reward projects.

Traditional funding often fails here. Instead of just giving money upfront (prospectively), Impact Evaluators create systems that look back at what work was actually done and what impact it actually had (retrospectively). It's much easier to judge the impact in a retrospective way!

- The setup is similar to Control Theory. Based on measuring and evaluating this impact against predefined goals, the system then distributes rewards (e.g: similar to how BitCoin block rewards do it).
- The Impact Evaluator goal is to **create strong incentives for people/teams to work on valuable, uncertain things** by promising a reward if they succeed in creating demonstrable impact.
- They work well on concrete things that you can turn into measurable stuff. They are powerful and will always overfit. When the goal is not exactly aligned, they can be harmful. Eg. Bitcoin wasn't created to maximize the energy consumption.
- They should be flexible as it's hard to predict ways the evaluation metrics will be gamed.
- Allow Community Feedback Mechanisms. Implement robust feedback systems that allow participants to report and address concerns about the integrity of the metrics or behaviors in the community. This feedback can be used to refine and improve the system continuously.
- Use hard to game metrics. Metrics that are hard, or expensive, to game, will be resistant (but not immune) to goodharts law.
- Use diversified metrics. Rather than relying on a single metric or indicator, use a diverse set of metrics to assess performance or impact.
- Dynamic and Adaptive Metrics. Implement mechanisms that allow for metrics to be adjusted or replaced as the system evolves. This adaptability can help prevent the gaming of static metrics and ensure that measures continue to align with the underlying goals of the IE.

Impact Evaluators are frameworks for [[Coordination|coordinating]] work and aligning [[Incentives]] in complex [[Systems]]. They provide mechanisms for retrospectively evaluating and rewarding contributions based on actual impact, helping solve coordination problems in [[Public Goods Funding]], research evaluation, and decentralized systems.

## Core Principles

- **Retrospective evaluation beats prospective promises**. Judge work by its actual impact, not promised outcomes. This reduces speculation and gaming while rewarding genuine value creation.
- **Credible neutrality through simplicity**. [The simpler a mechanism, the less space for hidden privilege](https://vitalik.eth.limo/general/2020/09/11/coordination.html). Fewer parameters mean more resistance to corruption and overfit.
- **Comparative truth over absolute metrics**. [Pairwise comparisons and rankings are more reliable than absolute scoring](https://anishathalye.com/designing-a-better-judging-system/). Humans excel at relative judgments.
- **Permissionless scalability**. Anyone should be able to [fork the evaluation system with their own criteria](https://vitalik.eth.limo/general/2024/09/28/alignment.html), preventing capture and enabling experimentation.
- **Legible impact attribution**. Make contributions and their value visible. [Transform vague notions of "alignment" into measurable criteria](https://vitalik.eth.limo/general/2024/09/28/alignment.html) that projects can compete on.

## Design Considerations

- **Start local and iterate**. Begin with small communities defining their own [[Metrics]] and evaluation criteria. Use rapid [[Feedback Loops]] to learn what works before scaling up.
  - Each community understands its context better than outsiders ([seeing like a state blinds you to local realities](https://slatestarcodex.com/2017/03/16/book-review-seeing-like-a-state/))
  - Local experiments surface patterns for higher-level systems
  - Small groups enable iterated games that reward trust and penalize defection
- **Build anti-Goodhart resilience**. Any metric used for decisions [becomes subject to gaming pressures](https://en.wikipedia.org/wiki/Campbell%27s_law). Design for evolution:
  - Run multiple evaluation algorithms in parallel and let humans choose
  - Use exploration/exploitation trade-offs (like multi-armed bandits) to test new metrics
  - Make the meta-layer for evaluating evaluators explicit
- **Separate data from judgment**. [Impact Evaluators work like data-driven organizations](https://handbook.davidgasquez.com/data/data-culture):
  - Gather objective attestations about work (commits, usage stats, dependencies)
  - Apply multiple "evaluation lenses" to interpret the data
  - Let funders choose which lenses align with their values
- **Design for composability**. Define clear data structures (graphs, weight vectors) as APIs between layers. This enables:
  - Multiple communities to share measurement infrastructure
  - Different evaluation methods to operate on the same data
  - Evolution through recombination rather than redesign

## Implementation Challenges

- **Incomplete contracts problem**. [It's expensive to measure what really matters](https://meaningalignment.substack.com/p/market-intermediaries-a-post-agi), so we optimize proxies that drift from true goals.
  - Current markets optimize clicks and engagement over human flourishing
  - The more powerful the optimization, the more dangerous the misalignment
- **Information elicitation without verification**. Getting truthful data from subjective evaluation when you can't verify it requires clever [[Mechanism Design]]:
  - [Peer prediction mechanisms](https://jonathanwarden.com/information-elicitation-mechanisms/) that reward agreement with hidden samples
  - [Bayesian Truth Serum](https://www.science.org/doi/10.1126/science.1102081) that uses both answers and predictions
  - Coordination games where truth serves as a Schelling point
- **Collusion resistance**. Any mechanism helping under-coordinated parties will also help [over-coordinated parties extract value](https://vitalik.eth.limo/general/2019/04/03/collusion.html). Countermeasures include:
  - Identity-free incentives (like proof-of-work)
  - Fork-and-exit rights for minorities
  - Privacy pools that exclude provably malicious actors
  - Multiple independent "dashboard organizations" preventing capture

## Mechanism Toolkit

- **Staking and slashing**. Require deposits that get burned for misbehavior. Simple but requires upfront capital.
- **Pairwise comparison engines**. Convert human judgments into weights using [Elo ratings or Bradley-Terry models](https://www.keiruaprod.fr/blog/2021/06/02/elo-vs-bradley-terry-model.html).
- **Quadratic mechanisms**. [Funding](https://vitalik.eth.limo/general/2019/12/07/quadratic.html) and voting that make influence proportional to square root of resources, reducing plutocracy.
- **Prediction and decision markets**. ["Vote values, bet beliefs"](https://medium.com/ethereum-optimism/retroactive-public-goods-funding-33c9b7d00f0c) - use conditional markets to choose policies maximizing agreed metrics.
- **Token-curated registries**. Stakeholders deposit tokens to curate lists, with challenges and slashing for bad entries.
- **Augmented bonding curves**. Automated market makers that route fees to upstream dependencies based on usage.
- **Deliberative protocols**. [Structured discussion processes](https://jonathanwarden.com/deliberative-consensus-protocols/) that surface information before voting.

## Related Fields

- Social Choice Theory
- Mechanism Design
- Computational Social Choice
- Game Theory
- Machine Learning
- Voting Theory
- Process Control Theory
- LLM Evals

## The Path Forward

- **Embrace plurality over perfection**. [No single mechanism can satisfy all desirable properties](https://en.wikipedia.org/wiki/Arrow%27s_impossibility_theorem) (efficiency, fairness, incentive compatibility, budget balance). Different contexts need different trade-offs.
- **Make evaluation infrastructure permissionless**. Just as anyone can fork code, anyone should be able to fork evaluation criteria. This prevents capture and enables innovation.
- **Focus on error analysis**. Like in [LLM evaluations](https://hamel.dev/blog/posts/evals-faq/), understanding failure modes matters more than optimizing metrics. Study what breaks and why.
- **Layer human judgment on algorithmic engines**. The ["engine and steering wheel" pattern](https://vitalik.eth.limo/general/2025/02/28/aihumans.html) - let algorithms handle scale while humans set direction and audit results.

Impact Evaluators are powerful but dangerous. Like nuclear reactors, they can solve major [[Coordination]] problems when designed well, but cascade failures are catastrophic. Start small, fail safely, and always maintain [credible exit options](https://newsletter.squishy.computer/p/soulbinding-like-a-state).

## Resources

- [Generalized Impact Evaluators](https://research.protocol.ai/publications/generalized-impact-evaluators/ngwhitepaper2.pdf)
- [A Flexible Design for Funding Public Goods](https://arxiv.org/pdf/1809.06421)
- [A Budget-balanced, Incentive-compatible Scheme for Social Choice](https://infoscience.epfl.ch/server/api/core/bitstreams/e929c9a6-d7d4-453b-a200-20ad93b64052/content)
- [Introduction to Impact Evaluators](https://youtu.be/TdDHWv00Z4E)
- [Impact Evaluator Design](https://youtu.be/1soPQ31ZHkQ)
- [Impact Evaluators](https://youtu.be/dpLtrugjfMc)
- [Generalized Impact Evaluators, A year of experiments and theory](https://research.protocol.ai/blog/2023/generalized-impact-evaluators-a-year-of-experiments-and-theory/)
- [Elo vs Bradley-Terry Model](https://www.keiruaprod.fr/blog/2021/06/02/elo-vs-bradley-terry-model.html)
- [Designing a Better Judging System](https://anishathalye.com/designing-a-better-judging-system/)
- [Deliberative Consensus Protocols](https://jonathanwarden.com/deliberative-consensus-protocols/)
- [Credible Neutrality](https://balajis.com/p/credible-neutrality)
- [Quadratic Payments: A Primer](https://vitalik.eth.limo/general/2019/12/07/quadratic.html)
- [Quadratic vs Pairwise](https://blog.zaratan.world/p/quadratic-v-pairwise)
- [Quadratic Funding is Not Optimal](https://jonathanwarden.com/quadratic-funding-is-not-optimal/)
- [A Mild Critique of Quadratic Funding](https://kronosapiens.github.io/blog/2019/12/13/mild-critique-qf.html)
- [Funding impact via milestone markets](https://docs.fileverse.io/0x0D97273dee4D1010321f9eBa2e9eaB135C17D6dE/0#key=5GgcacTDy2h1QwWV9vJqGD-YzwomzuIOueMACpjghbJLxfG3ZqbWl1qDC1Le04uR)
- [Kafka Index](https://summerofprotocols.com/wp-content/uploads/2024/04/Kafka-Index-Nadia-Asparouhova-1.pdf)
- [The Unreasonable Sufficiency of Protocols](https://summerofprotocols.com/the-unreasonable-sufficiency-of-protocols-web)
- [Good Death](https://summerofprotocols.com/research/good-death)
- [Retroactive Public Goods Funding](https://medium.com/ethereum-optimism/retroactive-public-goods-funding-33c9b7d00f0c)
- [The Public Goods Funding Landscape](https://splittinginfinity.substack.com/p/the-public-goods-funding-landscape)
- [Coordination, Good and Bad](https://vitalik.eth.limo/general/2020/09/11/coordination.html)
- [On Collusion](https://vitalik.eth.limo/general/2019/04/03/collusion.html)
- [Remuneration Rights](https://openrevolution.net/remuneration-rights)
- [AI as the engine, humans as the steering wheel](https://vitalik.eth.limo/general/2025/02/28/aihumans.html)
- [Central Planning as Overfitting](https://vitalik.eth.limo/general/2018/11/25/central_planning.html)
- [Info Finance](https://vitalik.eth.limo/general/2024/11/09/infofinance.html)
- [Plurality and Alignment](https://vitalik.eth.limo/general/2024/09/28/alignment.html)
- [Privacy in Evaluation Systems](https://vitalik.eth.limo/general/2025/04/14/privacy.html)
- [The Case for Plurality](https://vitalik.eth.limo/general/2024/08/21/plurality.html)
- [Community Notes: An Example That Works](https://vitalik.eth.limo/general/2023/08/16/communitynotes.html)
- [Open Source Funding](https://vitalik.eth.limo/general/2025/03/29/pubos.html)
- [Soulbinding Like a State](https://newsletter.squishy.computer/p/soulbinding-like-a-state)
- [Market Intermediaries in a Post-AGI World](https://meaningalignment.substack.com/p/market-intermediaries-a-post-agi)
- [Goodhart's Law Not Useful](https://commoncog.com/goodharts-law-not-useful/)
- [Ten Kilograms of Chocolate](https://medium.com/@florian_32814/ten-kilograms-of-chocolate-75c4fa3492b6)
- [Bittensor's Anatomy of Incentive Mechanism](https://docs.bittensor.com/learn/anatomy-of-incentive-mechanism)
- [Frequently Asked Questions (And Answers) About AI Evals](https://hamel.dev/blog/posts/evals-faq/)
- [Proportionally fair online allocation of public goods with predictions](https://dl.acm.org/doi/abs/10.24963/ijcai.2023/3)
- [A natural adaptive process for collective decision-making](https://onlinelibrary.wiley.com/doi/10.3982/TE5380)
- [Tournament Theory: Thirty Years of Contests and Competitions](https://www.researchgate.net/publication/275441821_Tournament_Theory_Thirty_Years_of_Contests_and_Competitions)
- [Are We Learning Yet? A Meta-Review of Evaluation Failures Across Machine Learning](https://datasets-benchmarks-proceedings.neurips.cc/paper_files/paper/2021/file/757b505cfd34c64c85ca5b5690ee5293-Paper-round2.pdf)
