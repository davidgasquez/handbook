# Public Goods Funding

Public goods are defined as goods that are both nonexcludable (it's infeasible to prevent someone from consuming the good) and nonrivalrous (one person's consumption can not reduce another person's consumption of the good). They benefit everyone but are difficult to fund through traditional market mechanisms due to their non-excludable and non-rivalrous nature. Examples include open-source software, scientific research, environmental protection, and community infrastructure.

- The fact that public goods are not excludable creates a "free-rider problem", where people are incentivized to enjoy the benefits of the good without paying for it.
  - [What's the point of contributing to a public park if non-contributors can use it too](https://splittinginfinity.substack.com/p/the-public-goods-funding-landscape)?
- All funding mechanisms involve trade-offs between simplicity, robustness, and theoretical optimality. There is no mechanism that [can simultaneously achieve four desirable criteria](https://www.jstor.org/stable/2298018)-
- [[Plurality|Different public goods require different funding approaches based on their characteristics and communities]].
- Mathematical optimality matters less than perceived fairness and historical precedent. Ideal funding methods that don't work in practice are not ideal.
  - [[Mechanism Design|Mechanism]] which satisfy different constraints have already been discovered, and it seems unlikely that a different approach will radically change the landscape. Instead, the **bottleneck seems to be in popularizing and scaling existing mechanisms in the real world**.

## Desirable Criteria

- **Pareto Efficiency**. The outcome achieved by the mechanism maximizes the overall welfare or some other desirable objective function.
- **Incentive Compatibility**. Designing mechanisms so that participants are motivated to act truthfully, without gaining by misrepresenting their preferences.
- **Individual Rationality**. Ensuring that every participant has a non-negative utility (or at least no worse off) by participating in the mechanism.
- **Budget Balance**. The mechanism generates sufficient revenue to cover its costs or payouts, without running a net deficit.
- **Coalition-Proofness**. Preventing groups of participants from conspiring to manipulate the mechanism to their advantage.
- **Provable Participation**. Even if spending should be kept private, users may want to prove their participation in a funding mechanism in order to boost their reputation or as part of an agreement.
- **Identity and Reputation**. To prevent sybil attacks, some form of identity is needed. If reputation is important, a public identity is preferred. If anonymity is required, zero-knowledge proofs or re-randomizable encryption may be necessary. Reputation is an important incentive to fund public goods. Some form of reputation score or record of participation can be useful for repeated games. These scores can help identify bad actors or help communities coalesce around a particular funding venue. [Identity-free mechanism can also be used](https://victorsintnicolaas.com/funding-public-goods-in-identity-free-systems/).
- **Verifiable Mechanisms**. Users may want certain guarantees about a mechanism before or after participation, especially if the mechanism being used is concealed. Ex-ante, they may want to upper-bound their amount of spending towards the good, ex-post, they may require proof that a sufficient number of individuals contributed.
- **Anti-Collusion Infrastructure**. Like secure voting systems, there is a threat of buying votes in a funding mechanism. Collusion can be discouraged by making it impossible for users to prove how they reported their preferences. This infrastructure must be extended to prevent collusion between the 3rd party and the users.
- **Predictable Schedules**. Participants need to know when are they getting funded.

## Methods

### Simulation Process (S-process)

The [S-Process (Simulation Process)](https://www.youtube.com/watch?v=jWivz6KidkI) is a collaborative funding algorithm designed to optimize the distribution of resources to public goods. It allows multiple funders to delegate the complexity of grant-making to overlapping groups of trusted "recommenders".

- **Aggregate Information, Not Just Money**. Instead of funders voting with dollars, participants input **Marginal Value Functions (MVFs)**. This creates a "How valuable is the next dollar given to this organization?" curve for each organization.
- **Delegation to Trusted Recommenders:** Funders often lack the time to evaluate every opportunity, the system allows them to delegate the creation of these value curves to trusted experts. Funders still have the "Final Say". This relieves stress on the advisors (recommenders), allowing them to express honest opinions without the anxiety of being the sole decision-maker.
- **Discourse is Essential:** Numbers cannot replace conversation. The process requires real-time debate where advisors explain *why* they value an organization differently.
1.  **Iterated Simulations:** The allocation algorithm is run repeatedly *during* the discussion. Advisors see where the money would go based on their current inputs, discuss the outcome, and adjust their inputs. This turns a "one-shot" game into an iterated cooperative game.
2.  **The "Disagreement Matrix":** The system highlights where advisors disagree most (e.g., Advisor A loves Org X, Advisor B hates Org X). Discussion is focused specifically on these disagreements to surface new information.

## Resources

- [Public Goods Funding Landscape](https://splittinginfinity.substack.com/p/the-public-goods-funding-landscape)
- [Public Goods Funding Mechanism List](https://docs.google.com/document/d/1n8fP3tWfLBIa-w4wC0rbOw2wo7odWvwseWptbuBdg6c/edit?tab=t.0)
- [List of Public Goods Funding Mechanisms](https://harsimony.wordpress.com/2022/02/10/list-of-public-goods-funding-mechanisms/)
- [Funding public goods using the Nash product rule](https://victorsintnicolaas.com/funding-public-goods-using-the-nash-product-rule/)
- [[Deep Funding]]
- [[Impact Evaluators]]
