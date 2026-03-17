# Technical Specifications

A technical specification is a written design artifact you use to think before coding, align stakeholders, and define what "done" means. It sits between [[Design Docs]] and [[Documentation]]. 

- Should be broad enough to explain the problem and trade-offs, but precise enough that someone else can implement and operate the change.
- Start from the problem, not the implementation. [Clarify the problem, context, goals, non-goals, assumptions, proposed solution, rollout, risks, and success metrics before you write code](https://stackoverflow.blog/2020/04/06/a-practical-guide-to-writing-technical-specs/). The main value is forcing you to scope the work, expose edge cases early, and align reviewers.
- Make the spec precise where interfaces and operations matter.
- [Once a spec is detailed enough to generate reliable software, it starts to look like code or pseudocode](https://haskellforall.com/2026/03/a-sufficiently-detailed-spec-is-code). Use specs to improve [[thinking]] and coordination, not to skip precision.

## Key Sections

- **Metadata**. Add the title, authors, reviewers, status, dates, and linked tickets so the document has clear accountability and revision context. 
- **Problem Statement and Context**. Explain the user or operational problem, why it matters, the relevant background, and the boundary of the system you are changing.  
- **Goals, non-goals, and assumptions**. State what success includes, what is explicitly out of scope, and what conditions you rely on so reviewers can challenge scope early.  
- **System overview and architecture**. Outline the main components, abstraction layers, dependencies, and how the pieces fit together before you dive into implementation detail. 
- **Domain model, interfaces, and invariants**. Define the important entities, data shapes, APIs or contracts, state machines, and normalization rules precisely enough that implementers make the same decisions.
- **Execution, failure, and safety model**. Describe the main flows, failure modes, recovery behavior, trust boundaries, and operational safety rules for the system you are proposing.
- **Test, rollout, and observability plan**. Say how you will validate the change, measure it in production, deploy it, and roll it back if needed.  
- **Alternatives, risks, open questions, and definition of done**. Record trade-offs, unresolved decisions, success metrics, milestones, and the checklist that marks the work complete.
