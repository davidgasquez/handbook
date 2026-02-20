# Artificial Intelligence Models

- LLMs build internal [[Knowledge Graphs]] in their network layers.
- LLMs shine in the kinds of situations where "good enough is good enough".
- Classic ML system where humans are designing how the information is organized (feature engineering, linking, graph building) scale poorly ([the bitter lesson](http://www.incompleteideas.net/IncIdeas/BitterLesson.html)). LLMs are able to learn how to organize the information from the data itself.
- [LLMs may not yet have human-level depth, but they already have vastly superhuman breadth](https://news.ycombinator.com/item?id=42625851).
- [[Prompt Engineering|Learning to prompt]] is similar to learning to search in a search engine (you have to develop a sense of how and what to search for).
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
- "AIs" can be dangerous in under-specified environments (e.g: pausing games to last longer in the level) but those are the places where we will use them most. If something is well specified, there might be better solutions/optimizations (maths, code, ...).
- [When the main purpose of writing is to demonstrate your thinking (building trust, applying for a job), don't use LLM output](https://x.com/HamelHusain/status/1976720326106173673). Use LLMs when you need to communicate info, or do admin stuff, where the person really just wants info and doesn't need to be convinced "how you think". LLMs are good at writing but bad at thinking.
  - LLMs are helpful when you want the output/result and don't need to do the work yourself (e.g: [going to the gym](https://danielmiessler.com/blog/keep-the-robots-out-of-the-gym) doesn't work if the weights are automatically lifted).
  - Personal communication and writing as trust and self expression. Rewriting with LLMs changes meaning, blurs authorship, erodes voice.
- [Don't outsoutce thinking](https://erikjohannes.no/posts/20260130-outsourcing-thinking/). That means tasks that:
  - Build complex tacit knowledge you'll need for navigating the world in the future.
  - Are an expression of care and presence for someone else.
  - Are a valuable experience on its own.
  - Are deceptive to fake.
- LLMs as "stateless functions". Fixed weights, no updating. LLMs are in-context learners.
- LLMs are a lot better at fill in the blanks (the micro) than grand strategy (the macro). [Generalists might increasingly outperform specialists](https://x.com/karpathy/status/2015883857489522876).
  - The skill you want to build is the ability to understand problems and have some concept of how to solve them.
  - Knowing how [the style](https://x.com/luusssso/status/2000941875910598700) is named makes prompting easier.

## Use Cases

- Naming things.
- A nice thesaurus.
- Brainstorm ([ask many things and then add constraints](https://twitter.com/emollick/status/1633941391121215490)).
- What's the name of the "thing" that does "something"?
- I want to accomplish X. I think I will try doing Y. Is there a better way?
- [Convert code from one language to another](https://twitter.com/sualehasif996/status/1635755267739598848).
- Generate YAMLs or other DSLs (translate between them).
- [[Agentic Engineering|Improve existing code]] (typing, tests, making it async, ...).
- Write basic CLIs.
- Write small scripts.
- [Generate structured data from text](https://thecaglereport.com/2023/03/16/nine-chatgpt-tricks-for-knowledge-graph-workers/).
- Do API request to SQL Semantic Layers (less prone for errors or hallucinating metric definitions).
- [Use different LLMs Agents to generate predictions into prediction markets and then spotcheck some of them with humans jurys. Apply evolutionary algorithms to improve the agents performance in prediction markets](https://youtu.be/b81LXpCqunk?t=2677).
- [Generate Podcast with LLMs talking about a topic](https://notebooklm.google.com/). Some great prompts:
  - Focus on the details. Don't stay high level. Explain concisely.
  - Focus on overall themes and principles across all the sources.
  - Relate concepts together. Map out all the interconnected ideas around.

### Design Styles

Some ~spells~ styles to try when designing dashboards, UIs, or anything else.

- Datasheet
- High-contrast
- Monospaced fonts
- Minimal and utilitarian layout
- Retro control-panel vibe
- NeoTech
- Industrial retrofuture
- Techno brutalism
- Neo-Brutalism
- Editorial Minimalism
- Swiss / International Typographic Style
- Text-first, code-adjacent feel
- Sharp rectangles, thin borders
- Terminal-inspired developer minimalism
- Fieldset + legend pattern

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
