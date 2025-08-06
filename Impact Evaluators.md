# Impact Evaluators

Impact Evaluators are frameworks for [[Coordination|coordinating]] work and aligning [[Incentives]] in complex [[Systems]]. They provide mechanisms for retrospectively evaluating and rewarding contributions based on impact, helping solve coordination problems in [[Public Goods Funding]].

It's hard to do [[Public Goods Funding]], open-source software, research, etc. that don't have a clear, immediate financial return, especially high-risk/high-reward projects. Traditional funding often fails here. Instead of just giving money upfront (prospectively), Impact Evaluators create systems that look back at what work was actually done and what impact it actually had (retrospectively). It's much easier to judge the impact in a retrospective way!

## Notes

- The goal is to **create strong incentives for people/teams to work on valuable, uncertain things** by promising a reward if they succeed in creating demonstrable impact.
- Impact Evaluators work well on concrete things that you can turn into measurable stuff.
  - They are powerful things and will overfit. When the goal is not well aligned, they can be harmful. E.g: Bitcoin wasn't created to maximize the energy consumption. An Impact Evaluators might become an Externalities Maximizers.
- **Community Feedback Mechanism**. Implement robust feedback systems that allow participants to report and address concerns about the integrity of the metrics or behaviors in the community. Use the feedback to refine and improve the system.
- Designing IEs has the side effect of making impact more legible, decomposed into specific properties, which can be represented by specific metrics.
  - Something like l2beat as a leaderboard
  - IEs should [make "making the next L2beat" a permissionless process](https://vitalik.eth.limo/general/2024/09/28/alignment.html) for the space. Independent entities should arise to evaluate how projects met the IE criteria.
  - Do more to make different aspects of alignment legible, while not centralizing in one single "watcher", we can make the concept much more effective, and fair and inclusive in the way that the Ethereum ecosystem strives to be.
- Impact Evaluators need to be (permissionless) forkable.
  - Anyone should be able to [fork the evaluation system with their own criteria](https://vitalik.eth.limo/general/2024/09/28/alignment.html), preventing capture and enabling experimentation.
- **Start local and iterate**. Begin with small communities defining their own [[Metrics]] and evaluation criteria. Use rapid [[Feedback Loops]] to learn what works before scaling up.
  - Each community understands its context better than outsiders ([seeing like a state blinds you to local realities](https://slatestarcodex.com/2017/03/16/book-review-seeing-like-a-state/))
  - Local experiments surface patterns for higher-level systems
  - Small groups enable iterated games that reward trust and penalize defection
  - Reduced size reduce friction
  - Impact evaluation should be done by the community at the local level. They should define their own metrics and evaluation criteria.
  - IEs should start small (community) and simple. Iterate as fast as possible with a learning feedback loop (there isn't a community one in deepfunding)!
  - Figure out system structures and incentives and use as an examples for the level above.
  - Focus on positive sum games and mechanisms.
  - E.g: OSO's "developer count" requires +5 commits to be counted. You might or might not align with that metric.
- IEs, as most systems should have a deadline or something like that so it fades away if it's not working.
- Fix rules to keep things simple and easy to play. Opinionated framework with sane defaults!
- [IEs are the scientific method in disguise like AI evals](https://eugeneyan.com/writing/eval-process/). You need automated IEs, which is basically science applied to building better systems. You also need human oversight.
- For areas with continuous output (e.g: minting for "better path finding algorightms"), follow Bittensor model.
- IEs are like nuclear power: extremely powerful if used correctly, but so very easy to get wrong, and when things go wrong the whole thing blows up in your face.
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
- **Embrace plurality over perfection**. [No single mechanism can satisfy all desirable properties](https://en.wikipedia.org/wiki/Arrow%27s_impossibility_theorem) (efficiency, fairness, incentive compatibility, budget balance). Different contexts need different trade-offs.
  - There is no "end of history" because whenever you fix an evaluation, some group has an incentive to abuse or break it again and feast on the wreckage.
  - This is the formal impossibility theorem that no mechanism can simultaneously achieve four desirable criteria:
    - Pareto Efficiency: The outcome achieved by the mechanism maximizes the overall welfare or some other desirable objective function.
    - Incentive Compatibility: Designing mechanisms so that participants are motivated to act truthfully, without gaining by misrepresenting their preferences.
    - Individual Rationality: Ensuring that every participant has a non-negative utility (or at least no worse off) by participating in the mechanism.
    - Budget Balance: The mechanism generates sufficient revenue to cover its costs or payouts, without running a net deficit.
- When collecting data, [pairwise comparisons and rankings are more reliable than absolute scoring](https://anishathalye.com/designing-a-better-judging-system/). Humans excel at relative judgments, but struggle with absolute judgments.
- **Legible Impact Attribution**. Make contributions and their value visible. [Transform vague notions of "alignment" into measurable criteria](https://vitalik.eth.limo/general/2024/09/28/alignment.html) that projects can compete on.
  - Support organizations like L2beat to track project alignment
  - Let projects compete on measurable criteria rather than connections
  - Enable neutral evaluation by EF and others
  - Create separation of powers through multiple independent "dashboard organizations"
- Tradeoffs in public goods funding approaches:
  - Voting on models: feels too abstract for voters and doesn't leverage their specific project expertise
  - Voting on metrics: judges just play with numbers until they get their favored allocation
  - Voting directly on projects: halo effect, peanut butter distributions, heavy operational workload
- **Incomplete contracts problem**. [It's expensive to measure what really matters](https://meaningalignment.substack.com/p/market-intermediaries-a-post-agi), so we optimize proxies that drift from true goals.
  - Current markets optimize clicks and engagement over human flourishing
  - The more powerful the optimization, the more dangerous the misalignment
  - Four interconnected issues:
    - Incomplete contracts - It's too expensive to measure what really matters (human flourishing), so we contract on proxies (hours worked, subscriptions)
    - Power asymmetries - Large suppliers face millions of individual consumers with take-it-or-leave-it contracts
    - Externalities - Individual flourishing depends on community wellbeing, but contracts remain individualized
    - Information asymmetries - Suppliers control the metrics and optimize for growth rather than user outcomes
- **Information elicitation without verification**. Getting truthful data from subjective evaluation when you can't verify it requires clever [[Mechanism Design]]:
  - [Peer prediction mechanisms](https://jonathanwarden.com/information-elicitation-mechanisms/) that reward agreement with hidden samples
  - [Bayesian Truth Serum](https://www.science.org/doi/10.1126/science.1102081) that uses both answers and predictions.
  - Coordination games where truth serves as a Schelling point.
- **Collusion resistance**. Any mechanism helping under-coordinated parties will also help [over-coordinated parties extract value](https://vitalik.eth.limo/general/2019/04/03/collusion.html). Countermeasures include:
  - Identity-free incentives (like proof-of-work).
  - Fork-and-exit rights for minorities.
  - Privacy pools that exclude provably malicious actors.
  - Multiple independent "dashboard organizations" preventing capture.
  - They should be flexible as it's hard to predict ways the evaluation metrics will be gamed.
- [The simpler a mechanism, the less space for hidden privilege](https://vitalik.eth.limo/general/2020/09/11/coordination.html). Fewer parameters mean more resistance to corruption and overfit and more people engaging.
  - Demonstrably fair and impartial to all participants (open source and publicly verifiable execution), with no hidden biases or privileged interests
  - Don't write specific people or outcomes into the mechanism (e.g: using multiple accounts)
- [An allocation mechanism can be seen as a measurement process, with the goal being the reduction of uncertainty concerning present beliefs about the future. An effective process will gather and leverage as much information as possible while maximizing the signal-to-noise ratio of that information — aims which are often at odds](https://blog.zaratan.world/p/quadratic-v-pairwise).
- In the digital world, we can apply several techniques to the same input and evaluate the potential impacts. E.g: Simulate different voting systems and see which one fits the best with the current views. This is a case for the system to have a final mechanism that acts as a layer for human to express preferences.
- [Every community and institutions wants to see a better, more responsive and dynamic provision of public goods within them, usually lack information about which goods have the greatest value and know quite a bit about social structure internally which would allow them to police the way GitCoin has in the domains it knows](https://gov.gitcoin.co/t/a-vision-for-a-pluralistic-civilizational-scale-infrastructure-for-funding-public-goods/9503/11).
  - IE's helps a community with more data and information to make better decisions.
  - Open Data Platforms for the community to gather better data and make better decisions.
  - Can open data be rewarded with an IE? What does a block reward mean there?
- **Legible Impact Attribution**. Make contributions and their value visible. [Transform vague notions of "alignment" into measurable criteria](https://vitalik.eth.limo/general/2024/09/28/alignment.html) that projects can compete on.
  - Seeing like a State blinds you to the realities that are complex. Need a way to evolve the metric to be anti-Goodhart's.
  - Not even anti-goodharts. Research says the best thing to do is to give all money to vaccine distribution, ...
- **Embrace plurality over perfection**. [No single mechanism can satisfy all desirable properties](https://en.wikipedia.org/wiki/Arrow%27s_impossibility_theorem) (efficiency, fairness, incentive compatibility, budget balance). Different contexts need different trade-offs.
- **Make evaluation infrastructure permissionless**. Just as anyone can fork code, anyone should be able to fork evaluation criteria. This prevents capture and enables innovation.
- **Focus on error analysis**. Like in [LLM evaluations](https://hamel.dev/blog/posts/evals-faq/), understanding failure modes matters more than optimizing metrics. Study what breaks and why.
- **Layer human judgment on algorithmic engines**. The ["engine and steering wheel" pattern](https://vitalik.eth.limo/general/2025/02/28/aihumans.html) - let algorithms handle scale while humans set direction and audit results.
- The easier to verify the solution is (e.g: verify a program passes the test vs verify the experiment replicates), the better and faster the IE can be.
- If the domain of the IE is sortable and differentiable, it's easy as it can be seen as pure optimization and doesn't require humans subjective evaluation.
- **Verify the evaluation is actually better than the baseline**.
  - Run multiple "aggregations" algorithms and have humans blindly select which one they prefer (blind test).
  - The meta-layer can help compose and evaluate mechanisms. How do we know mechanism B is better than A? Or even better than A + B, how do we evolve things?
    - Reinforcement Learning?
    - Genetic algorithms?
  - Is the evaluation/reward better than a centralized/simpler alternative?
    - E.g: on tabular clinical prediction datasets, standard logistic regression was found to be on par with deep recurrent models.
- [IEs need to show how the solution is produced by the interactions of people each of whom possesses only partial knowledge](https://news.ycombinator.com/item?id=44232461).
- **Exploration vs Exploitation**. IEs are optimization processes with tend to exploit (more impact, more reward). This ends up with a monopoly (100% exploit). You probably want to always have some exploration.
  - Do IEs need some explore/exploit thing? E.g. Use multi-armed bandit algorithms to adaptively choose between evaluation mechanisms based on historical performance and context.
- Having discrete rounds simplify the process. Like a batch pipeline.
- The more humans gets involved, the messier (papers, ... academia). You cannot get away from humans in most problems.
- [Campbell's Law](https://en.wikipedia.org/wiki/Campbell%27s_law). The more any quantitative social indicator is used for social decision-making, the more subject it will be to corruption pressures and the more apt it will be to distort and corrupt the social processes it is intended to monitor.
- [The McNamara Fallacy](https://en.wikipedia.org/wiki/McNamara_fallacy). Never choose metrics on the basis of what is easily measurable over what is meaningful. Data is inherently objectifying and naturally reduces complex conceptions and process into coarse representations. There’s a certain fetish for data that can be quantified.
- **Composable Data Structures**. IEs should define also a Data Structure for each layer so they can compose (graph, weight vector). That is the API.
  - E.g: Deepfunding problem data structure is a graph. Weights are a vector/dict, ...
- IEs will have to do some sort of "error analysis". [Is the most important activity in LLM evals](https://hamel.dev/blog/posts/evals-faq/#q-why-is-error-analysis-so-important-in-llm-evals-and-how-is-it-performed). Error analysis helps you decide what evals to write in the first place. It allows you to identify failure modes unique to your application and data.
- Film festivals are "local" IEs each one serving different values/communities.
- Use humans for sensing qualitative properties, machines for bookkeeping and preserve legitimacy by letting people choose/vote on the prefered evaluation mechanism.
- You can reduce coordination overhead through adaptive lazy consensus (continuous pairwise voting).
- The most important thing to do is to keep experimenting and learns from previous iterations
  - Cultivate a culture which welcomes experimentation.
  - Ostrom's Law. "A resource arrangement that works in practice can work in theory"
- To create a permissionless way for projects to participate, staking is a solution.
- You want a reactive and self balancing system. Loops where one parts reacts the other parts.
  - Feedback loop with the errors of the previous round.
- The entire thing needs to be like a game. People want to participate because is fun and they get some rewards.
- Decide metrics so that gaming/exploiting them means having a better tool, system, process.
- Which algorithm is the best assigning weights is not the best question.
  - What would you change about the algorithm?
  - What would you change about the process?
- Have a democratic way of expressing the values of the community and some representatives.
- Economist might be good at analyzing economies but doens't mean they're good at creating them. A phisicist or ecologist might be a better fit.
- Making it so people don't have to do somehting is cool. Makeing it so people can't do that thing is bad. E.g: time saving tools like AI is great but humans should be able to jump in if they want!
  - If people don't want to have their "time saved" have the freedom to express themselves. E.g: offer pairwise comparisons by default but let people expand on feedback or send large project reviews.
  - Information gathering is messy and noisy. It's hard to get a clear picture of what people think. Let people express themselves as much as they want.
- Complex model of people aren't always good (performative reactions, noise, ...)
- Prioritize consent and community feedback.
  - Community should steer the ship.
  - Design a democratic control that reacts to feedback.
- Allow people to express themselves as much as they want.
  - Super expert with lots of context already have the weights!
- Pairwise shines when all the context is in the UX.

## Principles

- Retrospective Reward for Verifiable Impact
- Credible Neutrality Through Transparent and Simple Mechanisms
- Comparative Truth-Seeking Over Absolute Metrics
- Anti-Goodhart Resilience
- Permissionless Scalability
- Plurality-Aware Preference Aggregation
- Collusion-Resistant Architecture
- Credible Exit and Forkability
- Composable and Interoperable Design
- Works on Public Existing Infrastructure
- Market-Based Discovery Mechanisms and Incentive Alignment

## Related Fields

- Reinforcement Learning
- Cybernetics
- Game Design
- Social Choice Theory
- Mechanism Design
- Computational Social Choice
- Machine Learning
- Voting Theory
- Process Control Theory
- Large Language Models Evaluation

## Mechanism Toolkit

- **Staking and Slashing**. Require deposits that get burned for misbehavior. Simple but requires upfront capital.
- **Pairwise Comparison Engines**. Convert human judgments into weights using [Elo ratings or Bradley-Terry models](https://www.keiruaprod.fr/blog/2021/06/02/elo-vs-bradley-terry-model.html).
- **Unprovable Vote Schemes (MACI)**. Use zero-knowledge and key-revocation games so ballots can't be sold or coerced.
- **Collusion-safe games**. Rely on identity-free incentives (PoW-like) or security-deposit futarchy where bad coordination is personally costly.
- **Fork-and-exit**. Make systems easy to split so minority users can counter-coordinate against cartels.
- **Quadratic Mechanisms**. [Funding](https://vitalik.eth.limo/general/2019/12/07/quadratic.html) and voting that make influence proportional to square root of resources, reducing plutocracy.
- **Prediction and Decision Markets (Futarchy)**. ["Vote values, bet beliefs"](https://medium.com/ethereum-optimism/retroactive-public-goods-funding-33c9b7d00f0c) - conditional markets choose policies that maximize agreed-upon metrics.
- **Distilled-Human-Judgement Markets**. A jury scores a small sample, open AI/human traders supply full answers, rewards fit; scales expertise cheaply.
- **Engine-and-steering-wheel pattern**. Open competition of AI "engines" acts under a simple, credibly-neutral rule-set set and audited/reinforced by humans.
- **Research Augmented Bonding Curves (ABCs) / Curation Markets**. Automated market makers that route fees to upstream dependencies based on usage.
- **Information-Elicitation without Verification**. [Peer-prediction mechanisms](https://jonathanwarden.com/information-elicitation-mechanisms/), [Bayesian Truth Serum](https://www.science.org/doi/10.1126/science.1102081), and other techniques to get truthful data from subjective evaluation.
- **Token-Curated Registries (TCRs)**. Stakeholders deposit tokens to curate lists; challengers and voters decide on inclusions, with slashing/redistribution to discourage bad entries.
- **Deliberative protocols**. [Structured discussion processes](https://jonathanwarden.com/deliberative-consensus-protocols/) that surface information before voting.
- **Harberger Taxes/COST (Common Ownership Self-assessed Tax)** - Entities self-assess value and pay tax on it, but must sell at that price if someone wants to buy. Useful for allocating scarce positions/rights in evaluation systems.
- **Dominant Assurance Contracts** - Entrepreneur provides refund + bonus if funding threshold isn't met, solving the assurance problem in public goods funding more elegantly than traditional crowdfunding.
- **Conviction Voting** - Preferences gain strength over time rather than snapshot voting. Voters continuously express preferences and conviction builds, reducing governance attacks.
- **Retroactive Oracles** - Designated future evaluators whose preferences are predicted by current markets. Separates the "who decides" from "what they'll value" questions.
- **Sortition/Random Selection** - Randomly selected evaluation committees from qualified pools. Reduces corruption and strategic behavior while maintaining statistical representativeness.
- **Optimistic Mechanisms** - Actions are allowed by default but can be challenged within a time window. Reduces friction for honest actors while maintaining security.
- **Vickrey-Clarke-Groves (VCG) Mechanisms** - Generalized truthful mechanisms where participants pay the externality they impose on others. Could be adapted for impact evaluation.
- **Streaming/Continuous Funding** - Instead of discrete rounds, continuous flows based on current evaluation state. Reduces volatility and gaming of evaluation periods.
- **Liquid Democracy** - Delegation of evaluation power to trusted experts, revocable at any time. Balances expertise with democratic control.
- **Threshold Cryptography/Secret Sharing** - For private evaluation scores that only become public when aggregated. Prevents anchoring and collusion during evaluation.
- **Augmented Bonding Curves with Vesting** - Time-locked rewards that vest based on continued positive evaluation over time, aligning long-term incentives

## Ideas

### Plurality Lens Impact Evaluators

A federated network or ecosystem of IEs built on a shared, transparent substrate (blockchain). Different communities ("Impact Pods") define their own scopes and objectives, leverage diverse measurement tools, and are evaluated through multiple, competing "Evaluation Lenses." Funding flows through dedicated pools linked to these Pods and Lenses.

- Impact Pods are self-organizing groups/communities (e.g., DAOs, project teams, research labs) define their specific objectives (O) and the scope (S) of work they consider relevant. They register their Pod on the public ledger, outlining their scope, objectives, and accepted measurement methods.
- Measurement Attestors are a diverse ecosystem of tools and actors provide attestations linked to Hypercerts.
- Evaluation Lenses are registered entities (could be smart contracts, expert panels operating under transparent rules, DAOs) that ingest Hypercerts (with their attestations) relevant to specific Pods and output evaluation scores. Multiple "Lenses" can exist and operate in parallel.
- Funding Pools create dedicated pools of capital specifying which Impact Pods, Evaluation Lenses and Reward Functions

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
- [Asymmetry of verification and verifier's law](https://www.jasonwei.net/blog/asymmetry-of-verification-and-verifiers-law)
- [Ostrom's Common Pool Resource Management](https://earthbound.report/2018/01/15/elinor-ostroms-8-rules-for-managing-the-commons/)
- [Community Notes Note ranking algorithm](https://communitynotes.x.com/guide/en/under-the-hood/ranking-notes)
- [Deep Funding is a Special Case of Generalized Impact Evaluators](https://hackmd.io/@dwddao/HypnqpQKke)
- [An Analysis of Pairwise Preference](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3359677)
- [Analysing public goods games using reinforcement learning: effect of increasing group size on cooperation](https://royalsocietypublishing.org/doi/10.1098/rsos.241195)
- [CrowdTruth 2.0: Quality Metrics for Crowdsourcing with Disagreement](https://arxiv.org/pdf/1808.06080)
- [Coevolutionary dynamics of population and institutional rewards in public goods games](https://www.sciencedirect.com/science/article/pii/S095741742302081X)
