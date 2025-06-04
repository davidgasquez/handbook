# Large Language Models

- LLM build internal [[Knowledge Graphs]] in their network layers.
- LLM models shine in the kinds of situations where "good enough is good enough".
- Classic ML system where humans are designing how the information is organized (feature engineering, linking, graph building) scale poorly ([the bitter lesson](http://www.incompleteideas.net/IncIdeas/BitterLesson.html)). LLMs are able to learn how to organize the information from the data itself.
- [LLMs may not yet have human-level depth, but they already have vastly superhuman breadth](https://news.ycombinator.com/item?id=42625851).
- Learning to prompt is similar to learning to search in a search engine (you have to develop a sense of how and what to search for).
- [LLMs are useful when exploiting the asymmetry between coming up with an answer and verifying the answer](https://vitalik.eth.limo/general/2025/02/28/aihumans.html) (similar to how a sudoku is difficult to solve, but it's easy to verify that a solution is correct).
- [LLMs are good at the things that computers are bad at, and bad at the things that computers are good at](https://www.ben-evans.com/benedictevans/2025/2/17/the-deep-research-problem). Also good at things that don't have wrong answers.
- Context is king. Managing the context window effectively is crucial for getting good results.
  - Add websites as context with [jina.ai](https://jina.ai/) or [pure.md](https://pure.md/)
- LLMs amplify existing expertise rather than replacing it.
- Be aware of training cut-off dates when using LLMs.

## Prompting

- Designing prompts is an iterative process that requires a lot of experimentation to get optimal results.
  - Start with simple prompts and keep adding more elements and context as you aim for better results.
  - Learn about the [advanced prompting techniques](https://www.promptingguide.ai/techniques).
- Be very specific about the instructions, task, and output format you want the model to perform.
- Follow [Prompt Engineering Guide](https://www.promptingguide.ai/), [Brex's Prompt Engineering Guide](https://github.com/brexhq/prompt-engineering), and [OpenAI Best Practices](https://help.openai.com/en/articles/6654000-best-practices-for-prompt-engineering-with-openai-api). Also [some more on GitHub](https://github.com/PickleBoxer/dev-chatgpt-prompts).
- Learn from [leaked System Prompts](https://matt-rickard.com/a-list-of-leaked-system-prompts).

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

## Coding Tips

- Using LLMs for coding is difficult and unintuitive, requiring significant effort to master.
- English is becoming the hottest new programming language. [Use it](https://addyo.substack.com/p/the-70-problem-hard-truths-about).
- Use comments to guide the model to do what you want.
- Describe the problem very clearly and effectively.
- Divide the problem into smaller problems (functions, classes, ...) and solve them one by one.
- Start with a template you like to bootstrap your project and setup all the necessary toolings and following a manageable project pattern.
- Before coding, make the plan with the model.
- Provide the desired function signatures, API, or docs.
- Prioritize exploration over execution (at first). Iterate towards precision during the brainstorming phase. Start fresh when switching to execution.
- Many LLMs now have very large context windows, but filling them with irrelevant code or conversation can confuse the model. Above about 25k tokens of context, most models start to become distracted and become less likely to conform to their system prompt.
- Make the model ask you more questions to refine the ideas.
- Take advantage of the fact that [redoing work is extremely cheap](https://crawshaw.io/blog/programming-with-llms).
- If you want to force some "reasoning", ask something like "[is that a good suggestion?](https://news.ycombinator.com/item?id=42894688)" or "propose a variety of suggestions for the problem at hand and their trade-offs".
- Add relevant context to the prompt. Context can be external docs, a small pesudocode code example, etc. Adding lots of context can confuse the model, so be careful!
- [Teach the agents to use tools](https://www.anthropic.com/engineering/claude-code-best-practices).

## Agents

Agents are systems where LLMs dynamically direct their own processes and tool usage, maintaining control over how they accomplish tasks.

- [The most common patterns are](https://www.anthropic.com/research/building-effective-agents):
  - Tool usage. Calls tools to accomplish a task.
  - Chain of thought. Decomposes a task into a sequence of steps, where each LLM call processes the output of the previous one.
  - Routing. Classifies an input and directs it to a specialized followup task.
  - Parallelization. Runs multiple agents in parallel and combines their results.
  - Orchestrator-workers. A single agent that directs a pool of workers to accomplish a task.
  - Evaluator-optimizer. One LLM call generates a response while another provides evaluation and feedback in a loop.
- ["Prompt engineering"](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/overview) will have a large impact on the usefulness of an agent.

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
- [LiveBench](https://livebench.ai/#/)
- [Kagi LLM Benchmark](https://help.kagi.com/kagi/ai/llm-benchmark.html)
- [Open Router Benchmarks](https://openrouter.ai/benchmarks)
- [Scale AI Leaderboard](https://scale.com/leaderboard)
