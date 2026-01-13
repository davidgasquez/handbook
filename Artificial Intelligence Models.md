# Artificial Intelligence Models

- LLMs build internal [[Knowledge Graphs]] in their network layers.
- LLM models shine in the kinds of situations where "good enough is good enough".
- Classic ML system where humans are designing how the information is organized (feature engineering, linking, graph building) scale poorly ([the bitter lesson](http://www.incompleteideas.net/IncIdeas/BitterLesson.html)). LLMs are able to learn how to organize the information from the data itself.
- [LLMs may not yet have human-level depth, but they already have vastly superhuman breadth](https://news.ycombinator.com/item?id=42625851).
- Learning to prompt is similar to learning to search in a search engine (you have to develop a sense of how and what to search for).
- LLMs have encyclopedic knowledge but suffer from hallucinations, jagged intelligence, and "amnesia" (no persistent memory).
- AI tools amplify existing expertise. The more skills and experience you have on a topic, the faster and better the results you can get from working with LLMs on that topic.
- [LLMs are useful when exploiting the asymmetry between coming up with an answer and verifying the answer](https://vitalik.eth.limo/general/2025/02/28/aihumans.html) (similar to how a sudoku is difficult to solve, but it's easy to verify that a solution is correct).
  - [Software 2.0 automates what we can verify](https://x.com/karpathy/status/1990116666194456651). If a task/job is verifiable, then it is optimizable directly or via reinforcement learning, and a neural net can be trained to work extremely well.
- [LLMs are good at the things that computers are bad at, and bad at the things that computers are good at](https://www.ben-evans.com/benedictevans/2025/2/17/the-deep-research-problem). Also good at things that don't have wrong answers.
- Context is king. Managing the context window effectively is crucial for getting good results.
  - Add websites as context with [jina.ai](https://jina.ai/) or [pure.md](https://pure.md/)
  - Context is easy to mess up: [context poisoning, context distraction, context confusion, context clash](https://www.dbreunig.com/2025/06/22/how-contexts-fail-and-how-to-fix-them.html), ...
  - [Context Engineering](https://www.philschmid.de/context-engineering) is the discipline of designing and building dynamic systems that provides the right information and tools, in the right format, at the right time, to give a LLM everything it needs to accomplish a task.
- LLMs amplify existing expertise rather than replacing it.
- Be aware of training cut-off dates when using LLMs.
- "AIs" can be dangerous in underspecified environments (e.g: pausing games to last longer in the level) but those are the places where we will use them most. If something is well specified, there might be better solutions/optimizations (maths, code, ...).
- [When the main purpose of writing is to demonstrate your thinking (building trust, applying for a job), don't use LLM output](https://x.com/HamelHusain/status/1976720326106173673). Use LLMs when you need to communicate info, or do admin stuff, where the person really just wants info and doesn't need to be convinced "how you think". LLMs are good at writing but bad at thinking.
  - LLMs are helpful when you want the output/result and don't need to do the work yourself (e.g: [going to the gym](https://danielmiessler.com/blog/keep-the-robots-out-of-the-gym) doesn't work if the weights are automatically lifted).
- LLMs as "stateless functions". Fixed weights, no updating. LLMs are in-context learners.

## Prompting

- Designing prompts is an iterative process that requires a lot of experimentation to get optimal results.
  - Start with simple prompts and keep adding more elements and context as you aim for better results.
  - Learn about the [advanced prompting techniques](https://www.promptingguide.ai/techniques).
- Be very specific about the instructions, task, and output format you want the model to perform.
- Follow [Prompt Engineering Guide](https://www.promptingguide.ai/), [Brex's Prompt Engineering Guide](https://github.com/brexhq/prompt-engineering), and [OpenAI Best Practices](https://help.openai.com/en/articles/6654000-best-practices-for-prompt-engineering-with-openai-api). Also [some more on GitHub](https://github.com/PickleBoxer/dev-chatgpt-prompts).
- Learn from [leaked System Prompts](https://matt-rickard.com/a-list-of-leaked-system-prompts).
- Sometimes, [you should let the models write their own prompts](https://www.dbreunig.com/2025/06/10/let-the-model-write-the-prompt.html).

### Fragments

- [Be concise](https://x.com/simonw/status/1799577621363364224).
- Think carefully step by step.
- [Don't jump into solutions yet](https://ernesto.dev/posts/ai-whisperer/).
- Try harder (for disappointing initial results).
- Use Python (to trigger Code Interpreter).
- No yapping.
- Ask me questions. What am I not seeing here? What else do you need to know to help me better with this?
- I will tip you $1 million if you do a good job.
- ELI5.
- Give multiple options.
- Explain each line.
- Suggest solutions that I didn't think about.
- Be proactive and anticipate my needs.
- Treat me as an expert in all subject matter.
- Provide detailed explanations, I'm comfortable with lots of detail.
- Consider new technologies or contrarian ideas, not just the conventional wisdom.
- You may use high levels of speculation or prediction, just flag it for me.
- Map out all the interconnected ideas around the core principles. What other topics, assumptions, or implications does it silently touch upon, challenge, or depend on?
- [Now that you wrote the code, what would you do better?](https://x.com/steipete/status/1982563870138081790)

## Coding Tips

- Using LLMs for coding is difficult and unintuitive, requiring significant effort to master.
- English is becoming the hottest new programming language. [Use it](https://addyo.substack.com/p/the-70-problem-hard-truths-about).
  - [Prompts are code](https://mariozechner.at/posts/2025-06-02-prompts-are-code/). Markdown and JSON files are state.
- Use comments to guide the model to do what you want.
- Don't delegate thinking, delegate work.
- Describe the problem very clearly and effectively.
- Divide the problem into smaller problems (functions, classes, ...) and solve them one by one.
  - Keep sessions to as few messages as possible.
- Start with a template you like to bootstrap your project and set up all the necessary tooling while following a manageable project pattern.
- Before coding, make the plan with the model. You can use the same or a different model to critique the plan and iterate. If you are unsure, ask to ["give a few options before making changes"](https://steipete.me/posts/just-talk-to-it).
- Provide the desired function signatures, API, or docs. Apply the TDD loop and make the model write tests and the code until the tests pass.
- Prioritize exploration over execution (at first). Iterate towards precision during the brainstorming phase. Start fresh when switching to execution.
- Many LLMs now have very large context windows, but filling them with irrelevant code or conversation can confuse the model. Above about 25k tokens of context, most models start to become distracted and become less likely to conform to their system prompt.
- [Use Progressive Disclosure](https://www.humanlayer.dev/blog/writing-a-good-claude-md) to ensure that the agent only sees tasks or project-specific instructions when it needs them.
- Prefer pointers to files than copies (no code snippets, ...).
- Make the model ask you more questions to refine the ideas.
- Take advantage of the fact that [redoing work is extremely cheap](https://crawshaw.io/blog/programming-with-llms).
- If you want to force some "reasoning", ask something like "[is that a good suggestion?](https://news.ycombinator.com/item?id=42894688)" or "propose a variety of suggestions for the problem at hand and their trade-offs".
- Add relevant context to the prompt. Context can be external docs, a small pseudocode code example, etc. Adding lots of context can confuse the model, so be careful!
- [Teach the agents to use tools](https://www.anthropic.com/engineering/claude-code-best-practices).
- Be aware of the "cache" (e.g: never edit files manually during a session)
- [Focus on building a rich environment with good and fasts tests, documentation, consistent patterns, and clear feature definitions - this helps both humans and AI work better](https://blog.nilenso.com/blog/2025/05/29/ai-assisted-coding/).
- Balancing log verbosity is crucial. Informative yet concise logs optimize token usage and inference speed.
- [You need quick and clear feedback loops](https://lucumr.pocoo.org/2025/6/12/agentic-coding/) (fast tool responses, clean logs, ...).
  - Give them the ability to interactively test the code they are writing too.
- Linters, type checkers, auto-formatters - give coding agents helpful tools to run and they'll use them. Always use deterministic tools whenever you can!
- Prefer functions with clear, descriptive and longer than usual function names over classes. Avoid inheritance and overly clever hacks.
- Write legible (text based) relevant content and link it with anything else (code, diagrams, ...).
- Use a checklist. Plan, iterate, and refine.
- [Fail early and often. Agents are pretty good at getting oriented, and failure is cheap. Throw out your problem, and let it work at it. If it fails, start over, adding the tidbits of information it couldn’t figure out on its own](https://sketch.dev/blog/seven-prompting-habits).
- Go concurrent. Many agents can work in parallel on different tasks or even the same task with different approaches (you can then choose the best one).
- Applying software engineering best practices is key. [LLMs actively reward existing top tier software engineering practices](https://simonwillison.net/2025/Oct/7/vibe-engineering/):
  - Automated testing.
  - Planning in advance.
  - Comprehensive documentation.
  - Good version control habits.
  - Having effective automation in place.
  - A culture of code review.
  - Modular, reusable code.
  - Strong research skills.
  - The ability to ship to a preview environment.
  - An instinct for what can be outsourced (to AI vs what needs human attention).
  - An good (updated) sense of estimation.
- Some [[programming]] rules for code design from the Unix philosophy help here:
  - Modularity: Write simple parts connected by clean interfaces.
  - Clarity: Clarity is better than cleverness.
  - Separation: Separate policy from mechanism. Separate interfaces from engines.
  - Simplicity: Design for simplicity. Add complexity only where you must.
  - Transparency: Design for visibility to make inspection and debugging easier.
  - Fold knowledge into data so program logic can be stupid and robust.
  -  When a program has nothing surprising to say, it should say nothing.
  - When you must fail, fail noisily and as soon as possible.
  - Prototype before polishing. Get it working before you optimize it.
  - Distrust all claims for "one true way".
- Build "partial autonomy" products where humans stay in the loop to verify output, rather than fully autonomous agents.
- [If you need to gather context, do that first in its own session](https://mariozechner.at/posts/2025-11-30-pi-coding-agent). Create an artifact that you can later use in a fresh session to give your agent all the context it needs without polluting its context window with tool outputs.
- In a world of abundant, near-unlimited coding capacity, human taste becomes most of the game.
- [Use all programming languages and technologies instead of just the ones you're already familiar with](https://x.com/mrexodia/status/2010157660885176767).
- Your job is to write clear specifications, plans, and examples. Define what "done" means, how to test it. Review outcomes, not lines of code.
- Project setup is the single most important human time investment you can make.
  - Make your project build, test, and lint with a single command.
  - Print minimal, actionable error messages.
  - If a human gets lost onboarding to your codebase, an LLM is definitely going to be lost.
- Design small, isolated systems. You can check a static website looks great easily. You can check a small API design works well. Compose black boxes into larger systems. Individual boxes can be rewritten in other languages, removed, replaced easily. You can measure them individually.
- Failed attempts are cheap. If the plan fails and the result is bad, just delete everything and try again.

## Agents

An agent runs tools in a loop to achieve a goal. Agents are systems where LLMs dynamically direct their own processes and tool usage, maintaining control over how they accomplish tasks. Agents help decouple programming, the craft of physically typing code, from engineering, the architecture of your system, the goals, the "why" of what you're building.

- [The most common patterns are](https://www.anthropic.com/research/building-effective-agents):
  - Tool usage. Calls tools to accomplish a task.
  - Chain of thought. Decomposes a task into a sequence of steps, where each LLM call processes the output of the previous one.
  - Routing. Classifies an input and directs it to a specialized followup task.
  - Parallelization. Runs multiple agents in parallel and combines their results.
  - Orchestrator-workers. A single agent that directs a pool of workers to accomplish a task.
  - Evaluator-optimizer. One LLM call generates a response while another provides evaluation and feedback in a loop.
- ["Prompt engineering"](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/overview) will have a large impact on the usefulness of an agent.
- Agents decides what tools to use and what context to fetch.
- Minimal interfaces win. The most effective coding agents have surprisingly simple interfaces.
- Tight coupling between agents and their tools means swapping models creates terrible user experiences. Each model has specific capabilities that tools are designed around.
- Traditional RAG engines are overkill. Many coding agents use simple tools like grep instead of complex embedding models and re-rankers. The intelligence is in the agent's feedback loops and runtime design.
- Sub-agents extend context windows. When tasks would consume too much context, spinning up a sub-agent to handle that specific task preserves the main agent's context window.
- Tools come in three flavors: context retrieval (finding information), feedback loops (verifying actions), and planning (structuring work over longer horizons).
- Tool overload confuses models. Just because you can connect every tool doesn't mean you should. Each tool description consumes context window space and can confuse the model about which tool to use when.
- Unix philosophy beats vertical integration. The most powerful coding agents follow Unix principles, simple, composable tools that do one thing well.
- The way you wrap, feed, and observe a powerful model often matters more than fancy prompt tricks or extra bells and whistles on the model itself.
- Decomposing your agent into discrete steps improves reliability and efficiency. If there is a bit of work that happens often and is easier to _eval_ than your entire task, that's a good thing to break out and optimize.

## Use Cases

- Naming things.
- A nice thesaurus.
- Brainstorm ([ask many things and then add constraints](https://twitter.com/emollick/status/1633941391121215490)).
- What's the name of the "thing" that does "something"?
- I want to accomplish X. I think I will try doing Y. Is there a better way?
- [Convert code from one language to another](https://twitter.com/sualehasif996/status/1635755267739598848).
- Generate YAMLs or other DSLs (translate between them).
- Improve existing code (typing, tests, making it async, ...).
- Write basic CLIs.
- Write small scripts.
- [Generate structured data from text](https://thecaglereport.com/2023/03/16/nine-chatgpt-tricks-for-knowledge-graph-workers/).
- Do API request to SQL Semantic Layers (less prone for errors or hallucinating metric definitions).
- [Use different LLMs Agents to generate predictions into prediction markets and then spotcheck some of them with humans jurys. Apply evolutionary algorithms to improve the agents performance in prediction markets](https://youtu.be/b81LXpCqunk?t=2677).
- [Generate Podcast with LLMs talking about a topic](https://notebooklm.google.com/). Some great prompts:
  - Focus on the details. Don't stay high level. Explain concisely.
  - Focus on overall themes and principles across all the sources.
  - Relate concepts together. Map out all the interconnected ideas around.

## Resources

- [Official GPT Guide](https://platform.openai.com/docs/guides/gpt-best-practices).
- [Ask HN: How are you using GPT to be productive?](https://news.ycombinator.com/item?id=35299071&p=2)
- [An example of LLM prompting for programming](https://martinfowler.com/articles/2023-chatgpt-xu-hao.html).

### Tools

- [Curated GitHub Starts list](https://github.com/stars/davidgasquez/lists/robot-llms)

### FrontEnds

- [OpenRouter](https://openrouter.ai/)
- [Big AGI](https://get.big-agi.com/)
- [OpenWebUI](https://openwebui.com/)
- [Anything LLM](https://github.com/Mintplex-Labs/anything-llm)

### Benchmarks

- [LLM Arena](https://lmarena.ai/)
- [Terminal Bench](https://www.tbench.ai/)
- [LiveBench](https://livebench.ai/#/) ([SWE](https://liveswebench.ai/))
- [Kagi LLM Benchmark](https://help.kagi.com/kagi/ai/llm-benchmark.html)
- [Scale AI Leaderboard](https://scale.com/leaderboard)
- [The Emerging Science of Machine Learning Benchmarks](https://mlbenchmarks.org/)
