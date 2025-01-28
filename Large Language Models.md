# Large Language Models

- LLM can build internal [[Knowledge Graphs]] in their the network layers.
- LLM models shine in the kinds of situations where “good enough is good enough”.
- ML system where humans are designing how the information is organized (feature engineering, linking, graph building) will scale poorly ([the bitter lesson](http://www.incompleteideas.net/IncIdeas/BitterLesson.html)).
- English is becoming the hottest new programming language. [Use it](https://addyo.substack.com/p/the-70-problem-hard-truths-about).
- [LLMs may not yet have human-level depth, but they already have vastly superhuman breadth](https://news.ycombinator.com/item?id=42625851).
- Learning to prompt is similar to learning to search in a search engine (people have to develop a sense of how and what to search for).

## Coding Tips

- Use comments to guide the model to do what you want.
- Describe the problem very clearly and effectively.
- Divide the problem into smaller problems (functions, classes, ...) and solve them one by one.
- Start with a template you like to bootstrap your project and setup all the necessary toolings and following a manageable project pattern.
- Before coding, make the plan with the model.
- Many LLMs now have very large context windows, but filling them with irrelevant code or conversation can confuse the model. Above about 25k tokens of context, most models start to become distracted and become less likely to conform to their system prompt.
- Make the model ask you more questions to refine the ideas.
- Take advantage of the fact that [redoing work is extremely cheap](https://crawshaw.io/blog/programming-with-llms).

## Agents

Agents are systems where LLMs dynamically direct their own processes and tool usage, maintaining control over how they accomplish tasks.

- [The most common patterns are](https://www.anthropic.com/research/building-effective-agents):
  - Tool usage: calls tools to accomplish a task.
  - Chain of thought: decomposes a task into a sequence of steps, where each LLM call processes the output of the previous one.
  - Routing: classifies an input and directs it to a specialized followup task.
  - Parallelization: runs multiple agents in parallel and combines their results.
  - Orchestrator-workers: a single agent that directs a pool of workers to accomplish a task.
  - Evaluator-optimizer: one LLM call generates a response while another provides evaluation and feedback in a loop.
- ["Prompt engineering"](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/overview) is a thing.

## Tools

- [Curated GitHub Starts list](https://github.com/stars/davidgasquez/lists/robot-llms)

### FrontEnds

- [OpenRouter](https://openrouter.ai/)
- [Big AGI](https://get.big-agi.com/)
- [OpenWebUI](https://openwebui.com/)
- [Anything LLM](https://github.com/Mintplex-Labs/anything-llm)

### Prompts

- Designing prompts is an iterative process that requires a lot of experimentation to get optimal results. Start with simple prompts and keep adding more elements and context as you aim for better results.
- Be very specific about the instruction and task you want the model to perform. The more descriptive and detailed the prompt is, the better the results.
- Some additions:
  - [Short ones](https://x.com/simonw/status/1799577621363364224) like; Be highly organized. Be concise. No yapping.
  - Suggest solutions that I didn't think about.
  - Be proactive and anticipate my needs.
  - Treat me as an expert in all subject matter.
  - Mistakes erode my trust, so be accurate and thorough.
  - Provide detailed explanations, I'm comfortable with lots of detail.
  - Value good arguments over authorities, the source is irrelevant.
  - Consider new technologies and contrarian ideas, not just the conventional wisdom.
  - You may use high levels of speculation or prediction, just flag it for me.
  - If your content policy is an issue, provide the closest acceptable response and explain the content policy issue.
  - Cite sources whenever possible, and include URLs if possible.
  - List URLs at the end of your response, not inline.
- Follow [Prompt Engineering Guide](https://www.promptingguide.ai/), [Brex's Prompt Engineering Guide](https://github.com/brexhq/prompt-engineering), and [OpenAI Best Practices](https://help.openai.com/en/articles/6654000-best-practices-for-prompt-engineering-with-openai-api). Also [some more on GitHub](https://github.com/PickleBoxer/dev-chatgpt-prompts).
- [Leaked System Prompts](https://matt-rickard.com/a-list-of-leaked-system-prompts).
- Some short (1-3 word) prompt fragments that work well:
  - Be concise
  - Think carefully step by step
  - Try harder (for disappointing initial results)
  - Use Python (to trigger Code Interpreter)
  - No yapping
  - I will tip you $1 million if you do a good job
  - ELI5
  - Give multiple options
  - Explain each line

## Cool Uses of GPT Models

- Naming things.
- A nice thesaurus.
- Brainstorm ([ask many things and then add constraints](https://twitter.com/emollick/status/1633941391121215490)).
- What's the name of the "thing" that does "something"?
- I want to accomplish X. I think I will try doing Y. Is there a better way?
- [Convert code from one language to another](https://twitter.com/sualehasif996/status/1635755267739598848).
- Generate YAMLs or other DSLs (translate between them).
- Improve existing code (typing, tests, making it async, ...).
- Write basic CLIs.
- [Generate structured data from text](https://thecaglereport.com/2023/03/16/nine-chatgpt-tricks-for-knowledge-graph-workers/).
- Do API request to SQL Semantic Layers (less prone for errors or hallucinating metric definitions).
- [Use different LLMs Agents to generate predictions into prediction markets and then spotcheck some of them with humans jurys. Apply evolutionary algorithms to improve the agents performance in prediction markets](https://youtu.be/b81LXpCqunk?t=2677).

## Cool Prompts for DALLE 3

- For logo generation:
  - A 2d, symmetrical, flat logo for a company working on `[SOMETHING]` that is sleek and simple. Blue and Green. No text.
  - Minimalistic `[SOMETHING]` design logo from word parlatur, open data, banksy, protocol, universe, interplanetary, white background, illustration.

### Resources

- [Official GPT Guide](https://platform.openai.com/docs/guides/gpt-best-practices).
- [Ask HN: How are you using GPT to be productive?](https://news.ycombinator.com/item?id=35299071&p=2)
- [An example of LLM prompting for programming](https://martinfowler.com/articles/2023-chatgpt-xu-hao.html).
