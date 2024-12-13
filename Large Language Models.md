# Large Language Models

- LLM can build internal [[Knowledge Graphs]]s in their the network layers.
- ML system where humans are designing how the information is organized (feature engineering, linking, graph building) will scale poorly ([the bitter lesson](http://www.incompleteideas.net/IncIdeas/BitterLesson.html)).

## Coding Tips

- Use comments to guide the model to do what you want.
- Divide the problem into smaller problems (functions, classes, ...) and solve them one by one.
- English is becoming the hottest new programming language. [Use it](https://addyo.substack.com/p/the-70-problem-hard-truths-about).

## Tools

- [LangChain](https://python.langchain.com/en/latest/)
- [Llama Index](https://github.com/jerryjliu/llama_index)
- [Llama Hub](https://llamahub.ai/)
- [Shell GPT](https://github.com/TheR1D/shell_gpt)
- [Scapeghost](https://jamesturk.github.io/scrapeghost/)
- [Kor](https://eyurtsev.github.io/kor/index.html)

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
  - Try harder (for disappointing initial results)
  - Use Python (to trigger Code Interpreter)
  - No yapping
  - ELI5
  - Give multiple options
  - Explain each line

#### Prompt Creator

> I want you to become my prompt master creator, by helping me to create the best possible prompt. In order to do this we will follow the following process:
> First, you ask me what the prompt is about. I will answer you, and we will go through the next step.
> Based on the answer I gave you, you will generate the following:
> An improved prompt, concise.
> Relevant questions you might have to improve the quality of the prompt.
> We will go through this process repeatedly, with me providing additional information to you, and you updating the prompt to improve it, until I say we are done.

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
- Do API request to SQL Semantic Layers (less prone for errors or hallucinating metric definitions)

## Cool Prompts for DALLE 3

- For logo generation:
  - A 2d, symmetrical, flat logo for a company working on `[SOMETHING]` that is sleek and simple. Blue and Green. No text.
  - Minimalistic `[SOMETHING]` design logo from word parlatur, open data, banksy, protocol, universe, interplanetary, white background, illustration.

### Resources

- [Official GPT Guide](https://platform.openai.com/docs/guides/gpt-best-practices).
- [Ask HN: How are you using GPT to be productive?](https://news.ycombinator.com/item?id=35299071&p=2)
- [An example of LLM prompting for programming](https://martinfowler.com/articles/2023-chatgpt-xu-hao.html).
