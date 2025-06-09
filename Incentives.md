# Incentives

Incentives matter. Everything around you is driven by incentives. There are rarely true "irrational" decisions. [If a decision looks irrational to you, it's most likely because you don't truly understand the incentives driving that person](https://twitter.com/saranormous/status/1527839900069875713).

Behavior is hard to fix. When people say they've learned their lesson they underestimate how much of their previous mistake was caused by emotions that will return when faced with the same circumstances unless incentives have changed.

> _"Simple, clear purpose and principles give rise to complex and intelligent behavior. Complex rules and regulations give rise to simple and stupid behavior"._ Dee Hock.

- To reach a [[Goals|goal]], reduce friction or increase incentives/rewards.
- To build better institutions, alter the incentive landscape. Great incentives create great outcomes.
- Humans are astonishingly bad at establishing incentives—we consistently invite manipulation and unintended consequences.
- You can't force other people to change. You can, however, change just about everything else. And usually, that's enough!
- Two types of incentives:
  - Intrinsic incentives are internal—created by self-interest or desire.
  - Extrinsic incentives are external—created by outside factors (reward, punishment).
- Designing incentives is hard. Is easy to design a bad incentive, which is worse than no incentive. It is specially hard to design a good incentive that relies on money. Money removes intrinsic incentives and attracks the wrong kind of behavior.
- [Four components of effectively designed incentives are](https://dhruvmethi.substack.com/p/bureaucracy):
  - Clear problem statement.
  - Clear target metric to improve.
  - Intentional system design.
  - Commitment to study the metric.

## Incentive Framework

[A structure through which to create, evaluate, and adjust incentives.](https://twitter.com/SahilBloom/status/1434847309976702980)

1. **Objectives**. What does success look like? Without upfront deep thought on objectives, intelligent incentive design is impossible.
2. **Metrics**. Establish [[Metrics|metrics that you will measure to track success]]. Avoid the McNamara Fallacy—never choose metrics on the basis of what is easily measurable over what is meaningful. Identify a wish list of metrics with no regard for feasibility. Work backwards from there.
3. **Anti-Metrics**. Establish "anti-metrics" that you measure to track unintended consequences. Anti-metrics force you to consider whether your incentives are fixing one problem here, but creating another problem over there.
4. **Stakes & Effects**. Consider the stakes. If the failures are costly and the decisions hard to reverse, conduct a heavier analysis.
5. **Skin in the Game**. To avoid principal-agent problems, the incentive designer should have skin in the game. Never allow an incentive to be implemented where the creator participates in pleasure of the upside, but not the pain in the downside. Skin in the game improves outcomes.
6. **Clarity & Fluidity**. An incentive is only as effective as the clarity of its dissemination and the ability and willingness to adjust it based on new information. Create even understanding playing fields for all constituents and avoid plan continuation bias.

## Mechanism Design

Mechanism design is the study of how incentives are created to achieve desired outcomes. It focuses on the design of [[Systems]] and [[Processes]] to achieve desired outcomes. [Mechanisms are algorithms plus incentives](https://balajis.com/p/credible-neutrality).

A mechanism is a tool that takes in inputs from multiple people, and uses these inputs as a way to determine things about its participants' values, so as to make some kind of decision that people care about. In a well-functioning mechanism, the decision made by the mechanism is both efficient - in the sense that the decision is the best possible outcome given the participants’ preferences, and incentive-compatible, meaning that people have the incentive to participate "honestly".

- Software is eating Mechanism Design. Incentives can be encoded in [[blockchain|blockchains]].
- The simpler a mechanism is, and the fewer parameters a mechanism has, the less space there is to insert hidden privilege for or against a targeted group. If a mechanism has fifty parameters that interact in complicated ways, then it's likely that for any desired outcome you can find parameters that will achieve that outcome.
  - Fewer knobs makes it more resistance to overfit (to your world view and use case) and corruption.
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

### Examples

- Democracy. The input is votes, the output is who controls each seat in the government that was up for election.
- Blockchain-awarded incentives for proof of work and proof of stake. The input is what blocks and other messages participants produce, the output is which chain the network accepts as canonical, and rewards are used to encourage "correct" behavior.
- Auctions. The input is bids, the output is who gets the item being sold, and how much the buyer must pay.
  - [Vickrey–Clarke–Groves auction](https://en.wikipedia.org/wiki/Vickrey%E2%80%93Clarke%E2%80%93Groves_auction).
  - [Second-price auction](https://en.wikipedia.org/wiki/Generalized_second-price_auction).
- Quadratic voting and funding as a way of coming to agreement on matters of governance and public goods.

### Impact Evaluators

It's hard to fund important things like public goods, open-source software, research, etc. that don't have a clear, immediate financial return, especially high-risk/high-reward projects.

Traditional funding often fails here. Instead of just giving money upfront (prospectively), Impact Evaluators create systems that look back at what work was actually done and what impact it actually had (retrospectively). The setup is similar to Control Theory. Based on measuring and evaluating this impact against predefined goals, the system then distributes rewards (e.g: similar to how BitCoin block rewards do it).

- The Impact Evaluator goal is to **create strong incentives for people/teams to work on valuable, uncertain things** by promising a reward if they succeed in creating demonstrable impact.
- They work well on concrete things that you can turn into measurable stuff. They are powerful and will always overfit. When the goal is not exactly aligned, they can be harmful. Eg. Bitcoin wasn't created to maximize the energy consumption.
- They should be flexible as it's hard to predict ways the evaluation metrics will be gamed.
- Allow Community Feedback Mechanisms. Implement robust feedback systems that allow participants to report and address concerns about the integrity of the metrics or behaviors in the community. This feedback can be used to refine and improve the system continuously.
- Use hard to game metrics. Metrics that are hard, or expensive, to game, will be resistant (but not immune) to goodharts law.
- Use diversified metrics. Rather than relying on a single metric or indicator, use a diverse set of metrics to assess performance or impact.
- Dynamic and Adaptive Metrics. Implement mechanisms that allow for metrics to be adjusted or replaced as the system evolves. This adaptability can help prevent the gaming of static metrics and ensure that measures continue to align with the underlying goals of the IE.
