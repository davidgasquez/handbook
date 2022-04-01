# Design Docs

[Define software designs through design docs](https://www.industrialempathy.com/posts/design-docs-at-google/).

- These are relatively informal documents that the primary author or authors of a software system or application create before they embark on the coding project. If code is the bricks and mortar, then these docs are the blueprints.
- Short specs are more likely to be read. The purpose of a spec is to briefly communicate the "why", "what" and "how" of the project to the rest of the team. Ideally these short documents force teams to scope out work so priorities are clear and teams avoid building the wrong thing.
- A tech spec forces you to think through complicated issues and to get everyone on the same page. This helps to avoid wasting time on dead-end solutions or building the wrong thing.
- It's hard to make technical decisions while remote. [Build a Proposal Culture](https://hamiltonulmer.com/writing/building-a-proposal-culture) is a way for a team to iteratively write their way to success.
- Even if no one else reads them, they force you to clarify my thinking before you start the (more expensive) process of implementation.
- Design docs fulfill the following functions in the software development life-cycle:
    - Early identification of design issues when making changes is still cheap.
    - Achieving consensus around a design in the organization.
    - Ensuring consideration of cross-cutting concerns.
    - Scaling knowledge of senior engineers into the organization.
    - Form the basis of an organizational memory around design decisions.
- Write them in whatever form makes the most sense for the particular project.
- A good-to-start-with structure can be:
  1. Context and scope. Overview of the landscape in which the new system is being built and what is actually being built. Focused on objective background facts. Keep it short.
  2. Goals and non-goals. What the goals of the system are, and, sometimes more importantly, what non-goals are.
  3. Design. This is the place to write down the trade-offs you made in designing your software. Given the context (facts), goals and non-goals (requirements), the design doc is the place to suggest solutions and show why a particular solution best satisfies those goals.
  4. APIs. If the system under design exposes an API, then sketching out that API is usually a good idea.
  5. Data storage. Systems that store data should likely discuss how and in what rough form this happens.
  6. Alternatives considered. Share alternative designs that would have reasonably achieved similar outcomes.
  7. Cross-cutting concerns. This is where your organization can ensure that certain cross-cutting concerns such as security, privacy, and observability are always taken into consideration. These are often relatively short sections that explain how the design impacts the concern and how the concern is addressed. Teams should standardize what these concerns are in their case.
- In many docs a diagram can be useful.
- The steps in the life-cycle of a design document are: Create, Iterate, Review, Implement, Iterate and Learn.
- [The RFC and feedback should be posted publicly. Everyone can join the discussion. The goal is to include as many people as possible to access more points of view and spread the knowledge simultaneously](https://candost.blog/how-to-stop-endless-discussions/).
- The process brings accountability. Whoever writes the proposal should be kept accountable. When people know that they will be accountable, they tend to approach more carefully and consider different aspects seriously. Ways to hold yourself and others accountable for showing your work:
	- Start by stating the problem you’re trying to solve and why.
	- Enumerate what your goals were and what principles you followed.
	- Communicate not just what, but how, and why the decision came to be.
	- Link to any source materials or prior art that you used to make the decision.
	- Include what alternatives you evaluated and why they were ultimately dismissed
	- If it’s not apparent, explain who was involved with the decision along with their roles.
	- Set expectations around opportunities for feedback, improvement, or participation, if any.
	- Explain the state of the decision (e.g., final, proposed), and when it will be revisited, if ever.
	- Distill meeting recordings and chat transcripts to create a concise and easily consumed historic record.
	- Avoid using “best practice”, “industry standard”, or “parent company/former employer does X” as a justification.
	- Establish clear timelines and provide regular updates to avoid the perception that lack of visibility is lack of movement.

### Resources

- [Google Design Doc Template](https://docs.google.com/document/d/18hYAQCTsDgaFUo-VJGhT0UqyetL2LbAzkWNK1fYS8R0/edit#)
- [Awesome Tech Specs](https://eng.lyft.com/awesome-tech-specs-86eea8e45bb9)
- [On Writing Tech Specs](https://codeburst.io/on-writing-tech-specs-6404c9791159)
- [Rust RFCs Template](https://github.com/rust-lang/rfcs/blob/master/0000-template.md)
- [Scaling Engineering Teams via RFCs: Writing Things Down](https://blog.pragmaticengineer.com/scaling-engineering-teams-via-writing-things-down-rfcs)
