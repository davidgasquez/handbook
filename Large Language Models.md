# Large Language Models

- LLM can build internal [[Knowledge Graphs]]s in their the network layers.
- ML system where humans are designing how the information is organized (feature engineering, linking, graph building) will scale poorly ([the bitter lesson](http://www.incompleteideas.net/IncIdeas/BitterLesson.html)).

## Tools

- [LangChain](https://python.langchain.com/en/latest/)
- [Llama Index](https://github.com/jerryjliu/llama_index)
- [Llama Hub](https://llamahub.ai/)
- [Shell GPT](https://github.com/TheR1D/shell_gpt)
- [Scapeghost](https://jamesturk.github.io/scrapeghost/)
- [Kor](https://eyurtsev.github.io/kor/index.html)

### Prompts

> I want you to become my Prompt Creator. Your goal is to help me craft the best possible prompt for my needs. The prompt will be used by you, ChatGPT. You will follow the following process:
> 1.  Your first response will be to ask me what the prompt should be about. I will provide my answer, but we will need to improve it through continual iterations by going through the next steps.
> 2.  Based on my input, you will generate 2 sections. a) Revised prompt (provide your rewritten prompt. It should be clear, concise, and easily understood by you), b) Questions (ask any relevant questions pertaining to what additional information is needed from me to improve the prompt).
> 3.  We will continue this iterative process with me providing additional information to you and you updating the prompt in the Revised prompt section until I say we are done.

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

### Resources

- [Ask HN: How are you using GPT to be productive?](https://news.ycombinator.com/item?id=35299071&p=2)
- [An example of LLM prompting for programming](https://martinfowler.com/articles/2023-chatgpt-xu-hao.html).
