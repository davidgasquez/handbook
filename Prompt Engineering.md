# Prompt Engineering

- [A short prompt is often enough; larger or more important tasks should include only the parts that matter](https://learn.chatgpt.com/docs/prompting).
  - **[[Goals|Goal]]**: Describe the result, not detailed steps unless the process itself matters.
  - **Context**: Add only information or sources that could change the result, and explain what the model should take from each. Too much context can confuse the model.
  - **Output**: Name the audience, format, length, and intended use.
  - **Boundaries**: State what must stay unchanged, what to avoid, and what requires approval.
- Designing prompts is an [[Agentic Engineering|iterative process]] that requires [[Experimentation|experimentation]].
  - Start simple. Review the result and ask for the specific change you want.
  - For important work, ask the model to check the result and flag missing information instead of guessing, then review it yourself.
  - Learn about the [advanced prompting techniques](https://www.promptingguide.ai/techniques).
- English is becoming the hottest new [[Programming|programming]] language. [Use it](https://addyo.substack.com/p/the-70-problem-hard-truths-about).
  - [[Prompt Engineering|Prompts are code]]. Markdown and JSON files are state.
  - [Specs are core to programming with LLMs](https://www.dbreunig.com/2026/01/08/a-software-library-with-no-code.html).
- Use comments to guide the model to do what you want.
- Describe the problem very clearly and effectively.
- Make the model ask you more questions to refine the [[Ideas|ideas]].
- If you want to force some "reasoning", ask something like "[is that a good suggestion?](https://news.ycombinator.com/item?id=42894688)" or "propose a variety of suggestions for the problem at hand and their trade-offs".
- ["Prompt engineering"](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/overview) will have a large impact on the usefulness of an agent.
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
