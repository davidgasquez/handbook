# Mechanism Design

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
- [Truthtelling games](https://jonathanwarden.com/truthtelling-games/) can incentivize honesty through coordination games where participants win by giving the same answer as others, with truth serving as a powerful Schelling point (truthtelling is the winning strategy only if everybody else tells the truth). Information elicitation mechanisms can get people to reveal private/subjective information truthfully even without verification.

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
- [Victor Sint Nicolaas' blog](https://victorsintnicolaas.com/)
- [Allocation Mechanisms](https://www.allo.expert/mechanisms)
