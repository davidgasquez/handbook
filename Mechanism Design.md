# Mechanism Design

Mechanism design is the study of how incentives are created to achieve desired outcomes. It focuses on the design of [[Systems]] and [[Processes]] to achieve desired outcomes. [Mechanisms are algorithms plus incentives](https://balajis.com/p/credible-neutrality).

A mechanism is a tool that takes in inputs from multiple people, and uses these inputs as a way to determine things about its participants' values, so as to make some kind of decision that people care about. In a well-functioning mechanism, the decision made by the mechanism is both efficient - in the sense that the decision is the best possible outcome given the participants’ preferences, and incentive-compatible, meaning that people have the incentive to participate "honestly".

- Software is eating Mechanism Design. Incentives can be encoded in [[blockchain|blockchains]].
- The simpler a mechanism is, and the fewer parameters a mechanism has, the less space there is to insert hidden privilege for or against a targeted group. If a mechanism has fifty parameters that interact in complicated ways, then it's likely that for any desired outcome you can find parameters that will achieve that outcome.
  - Fewer knobs makes it more resistant to overfit (to your world view and use case) and corruption.
  - The best engineering designs are those that remove things and make them implicit.
  - Remember to keep fast [[Feedback Loops]] in mind when designing mechanisms.
- Mechanism design flips game theory: choose rules (outcomes & payments) so strategic agents reach desired outcomes.
- An agent's "type" is their private information that determines how much they value each possible outcome (e.g: a bidder's valuation for an item).
- In quasilinear settings (utility = value − payment), mechanisms map reported types to decisions and transfers.
- The Revelation Principle lets us focus on direct, truth-telling mechanisms: DSIC (dominant strategies) or BIC (Bayes-Nash).
- Gibbard–Satterthwaite impossibility: with three or more options and unrestricted preferences, only dictatorial DSIC choice functions exist.
- Top Trading Cycles yields Pareto-efficient, individually rational, strategyproof allocations in exchange problems.
- Most bits of information in the output of a mechanism should come from the participants' inputs, not from hard-coded rules inside of the mechanism itself.
- A good mechanism is also a mechanism that actually does solve the problems that we care about. If it can't be done completely neutrally, it doesn't mean it should not be done at all.
- Any mechanism that can help genuinely under-coordinated parties coordinate will, without the right safeguards, also help already coordinated parties (such as many accounts controlled by the same person) [over-coordinate](https://vitalik.eth.limo/general/2019/04/03/collusion.html) with potential ways to "do wrong" (e.g: extract money from the system).
- You can increase mechanism complexity if you trade it off for identity or collusion resistance. If you figure out a way to make it the mechanism identity resistant then, it'll support more complex setups.
- [Truthtelling games](https://jonathanwarden.com/truthtelling-games/) can incentivize honesty through coordination games where participants win by giving the same answer as others, with truth serving as a powerful Schelling point (truthtelling is the winning strategy only if everybody else tells the truth). Information elicitation mechanisms can get people to reveal private/subjective information truthfully even without verification.
- Some of the interesting properties of a mechanism are; local/bottom up decision making, can be combined in different layers (horizontal / vertical), and [[Modularity|modularity]].

### Examples

- Democracy. The input is votes, the output is who controls each seat in the government that was up for election.
- Blockchain-awarded incentives for proof of work and proof of stake. The input is what blocks and other messages participants produce, the output is which chain the network accepts as canonical, and rewards are used to encourage "correct" behavior.
- Auctions. The input is bids, the output is who gets the item being sold, and how much the buyer must pay.
  - [Vickrey–Clarke–Groves auction](https://en.wikipedia.org/wiki/Vickrey%E2%80%93Clarke%E2%80%93Groves_auction).
  - [Second-price auction](https://en.wikipedia.org/wiki/Generalized_second-price_auction).
- Quadratic voting and funding as a way of coming to agreement on matters of governance and [[Public Goods Funding]].

### Resources

- [Jonathan Warden's blog](https://jonathanwarden.com)
- [Sam Harsimony's Substack](https://substack.com/@splittinginfinity)
- [Victor Sint Nicolaas' blog](http://web.archive.org/web/20250719074804/https://victorsintnicolaas.com/)
- [Allocation Mechanisms](https://www.allo.expert/mechanisms)
- [Generalized Impact Evaluators](https://research.protocol.ai/publications/generalized-impact-evaluators/ngwhitepaper2.pdf) - Framework for retrospective reward mechanisms
- [Info Finance](https://vitalik.eth.limo/general/2024/11/09/infofinance.html) - Using information aggregation for social decisions

## Toolkit

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
- **Multi-armed Bandits** - Adaptive mechanism selection algorithms that balance exploration and exploitation. Dynamically choose between evaluation mechanisms based on historical performance and context to optimize for both learning and effectiveness.
- **Privacy Pools** - Systems that maintain participant privacy while excluding provably malicious actors. Allow honest participants to prove non-membership in bad actor sets without revealing their identity.
- **Reinforcement Learning for Meta-Evaluation** - Use RL to evolve evaluation mechanisms through trial and error. The system learns which evaluation approaches work best in different contexts by treating mechanism selection as a sequential decision problem.
- **Genetic Algorithms** - Evolution-based optimization for evaluation mechanisms. Breed and mutate successful evaluation strategies, allowing the system to discover novel approaches through recombination and selection pressure.
- **Schelling Point Coordination Games** - Information elicitation mechanisms where truth naturally emerges as the coordination point. Participants are incentivized to report honestly because they expect others to do the same, making truth the natural focal point.

## Resources

- [Quadratic Payments: A Primer](https://vitalik.eth.limo/general/2019/12/07/quadratic.html)
- [Quadratic Funding is Not Optimal](https://jonathanwarden.com/quadratic-funding-is-not-optimal/)
- [A Mild Critique of Quadratic Funding](https://kronosapiens.github.io/blog/2019/12/13/mild-critique-qf.html)
