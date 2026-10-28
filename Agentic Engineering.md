# Agentic Engineering

- An agent runs tools in a loop to achieve a [[Goals|goal]]. 
- Agents are [[Systems|systems]] where [[Artificial Intelligence Models|LLMs]] dynamically direct their own [[Processes|processes]] and tool usage, maintaining control over how they accomplish tasks. 
- Agents help decouple [[Programming|programming]], the craft of physically typing code, from engineering, the architecture of your system, the goals, the "why" of what you're building.

## Workflow

- Using LLMs for coding is unintuitive, requiring significant effort to master.
- [Treat programming with agents as theory building](https://www.seangoedecke.com/programming-with-ai-agents-as-theory-building/). Maintain your own [[Mental Models|mental model]] of the system and evaluate agent output against it. Productivity comes from informed steering and rejection, not accepting more generated code.
- Before coding, make a [[Planning|plan]] with the model.
  - You can use the same or a different model to critique the plan and iterate. If you are unsure, ask to ["give a few options before making changes"](https://steipete.me/posts/just-talk-to-it).
  - Progressive, iterative prototyping. [Code is cheap. Redoing work is extremely cheap](https://crawshaw.io/blog/programming-with-llms). Prioritize exploration over execution (at first). Iterate towards precision during the brainstorming phase. Start fresh once you know what and how to build it.
  - The act of writing code (or doing something) surfaces decisions you hadn't considered. When code is cheap, implement to learn.
  - Failed attempts are cheap. If the plan fails and the result is bad, just delete everything and try again.
    - [Fail early and often. Agents are pretty good at getting oriented, and failure is cheap. Throw out your problem, and let it work at it. If it fails, start over, adding the tidbits of information it couldn't figure out on its own](https://sketch.dev/blog/seven-prompting-habits).
  - You can [have the agent interview you](https://developers.openai.com/codex/learn/best-practices) and challenge assumptions before coding!
  - Low fidelity prototypes are better than walls of specs
- Divide the problem into smaller problems (functions, classes, ...) and solve them one by one. Keep sessions short.
- [Code is cheap, but maintenance, support, and security aren't](https://x.com/davidfowl/status/2054084334848790652)!
- [Use all programming languages and technologies instead of just the ones you're already familiar with](https://x.com/mrexodia/status/2010157660885176767).
- [Software is still hard](https://x.com/badlogicgames/status/2017008550111773098). It gets harder if you trick yourself into thinking the agents can take on the hard parts.

## Tools and Feedback

- [Teach and tell the agents to use the same tool you'd use](https://www.anthropic.com/engineering/claude-code-best-practices) to run and debug code.
- [You need quick and clear feedback loops](https://lucumr.pocoo.org/2025/6/12/agentic-coding/) (fast tool responses, clean logs, ...).
  - Give them the ability to interactively test the code they are writing too.
- Use deterministic tools whenever you can. Linters, type checkers, auto-formatters, commit hooks, ...
- Use [[Programming|quiet-success, loud-failure conventions]] for tool feedback.
- Build "partial autonomy" products where humans stay in the loop to verify output, rather than fully autonomous agents.
  - [Your job is to design environments where iteration converges toward correctness instead of drifting toward plausible nonsense](https://nonstructured.com/zen-of-ai-coding/).
- Tools come in three flavors: context retrieval (finding information), feedback loops (verifying actions), and planning (structuring work over longer horizons).
- Choose tool interfaces with [[Artificial Intelligence Models|model training]] in mind.
- The way you wrap, feed, and observe a powerful model often matters more than fancy prompt tricks or extra bells and whistles on the model itself.
- Decomposing your agent into discrete steps improves reliability and efficiency. If there is a bit of work that happens often and is easier to _eval_ than your entire task, that's a good thing to break out and optimize.

## Codebase Design

- Project setup is the single most important human time investment you can make.
  - Make your project build, test, and lint with a single command.
  - Print minimal, actionable error messages.
  - If a human gets lost onboarding to your codebase, an LLM is definitely going to be lost.
- Fix your fundamentals first: data quality, documentation, backups, testing, permissions, and operational culture. An LLM is not a psychic.
- Design small, isolated systems. You can check a static website looks great easily. You can check a small API design works well. Compose black boxes into larger systems. Individual boxes can be rewritten in other languages, removed, replaced easily. You can measure them individually.
- [Focus on building a rich environment with good and fast tests, documentation, consistent patterns, and clear feature definitions - this helps both humans and AI work better](https://blog.nilenso.com/blog/2025/05/29/ai-assisted-coding/).
- Write legible (text based) relevant content and link it with anything else (code, diagrams, ...).
- Applying software engineering best practices is key. [LLMs actively reward existing top tier software engineering practices](https://simonwillison.net/2025/Oct/7/vibe-engineering/):
  - Automated testing.
  - [Red/green TDD](https://simonwillison.net/guides/agentic-engineering-patterns/red-green-tdd/).
  - Planning in advance.
  - Comprehensive [[Documentation|documentation]] (exportable/accessible in markdown).
  - Good version control habits.
  - Having effective [[Automation|automation]] in place.
  - A [[Culture|culture]] of code review.
  - Modular, reusable code.
  - Strong research skills.
  - The ability to ship to a preview environment.
  - An instinct for what can be outsourced (to AI vs what needs human attention).
  - A good (updated) sense of estimation.
- [[Programming|Unix philosophy]] beats vertical integration. The most powerful coding agents follow Unix principles, simple, composable tools that do one thing well.
- Design architecture for very quick iteration and change.
  - Focus on figuring out what does "the box" actually do and what are the invariants that must be satisfied. With those boundaries established, the implementation inside can vary freely.
  - Good component boundaries ([[Modularity]]) let you change the internals quickly without affecting other services or infrastructure.
- [Agents don't navigate software so much as intuit and compose it](https://www.amplifypartners.com/blog-posts/the-primitive-is-the-product). They don't see your GUI, but consume your API spec. Move away from visual interfaces and toward headless, API-first environments. An agent needs a CLI or a robust API, not a button on a web page.
- The best product for an agent is just the best product for a developer. Think like a developer-tools company: ship small, boring, composable primitives with explicit inputs, outputs, constraints, and errors that can be invoked and chained reliably.
- [Provide structured error hints](https://robertsahlin.substack.com/p/why-the-future-of-data-platform-engineering). If a request fails, the system should provide a reason that allows an agent to self-correct and retry without human intervention.
- A good test for how agentic-friendly your codebase is: "[Can you get away with just asking for the What without describing the How](https://x.com/thorstenball/status/2070061003987927535)?"
- Coding agents primarily navigate repositories through string and filename search, so [identifiers and paths should be good search terms](https://modem.dev/blog/how-coding-agents-read-your-code).
  - Prefer distinctive, concept-specific function, method, type, directory, and file names over generic names such as create, Data, or Config.
  - Prefer functions with clear, descriptive, unique, and longer than usual function names over classes. Avoid inheritance and overly clever hacks.
- Care about the failure modes. It's very easy to make things that work well if you don’t care how they fail. [AI-generated code can be designed to work while not being designed to fail gracefully](https://pluralistic.net/2026/01/06/1000x-liability/).

## Skills

- Automate everything that's easy. To spend more time on the hard stuff, minimize the time you spend on easy things. Distill learnings into skills, build loops, automate code reviews, and let your tools compound.
  - If it doesn't land, make a SKILL.
- [Write skills for your product](https://x.com/karpathy/status/2026360908398862478) so agents know how to use it properly. Distribute them.
- [Good skills optimize predictability](https://web.archive.org/web/20260620224727/https://raw.githubusercontent.com/mattpocock/skills/refs/heads/main/skills/productivity/writing-great-skills/SKILL.md).
  - Write checkable steps with explicit completion criteria, front-load the trigger words that should invoke them, and use [[Context Engineering|progressive disclosure]] for reference material.
  - Prune duplication, no-ops, and stale sediment so each meaning has a single source of truth.

### Examples

- [Edward Tufte's Visualization Skills](https://github.com/aref-vc/tufte-claude-skill)
- [Agent skill to de-AI writing](https://github.com/theclaymethod/unslop)
