# Using AI

- LLMs shine in the kinds of situations where "good enough is good enough".
- [LLMs are useful when exploiting the asymmetry between coming up with an answer and verifying the answer](https://vitalik.eth.limo/general/2025/02/28/aihumans.html) (similar to how a sudoku is difficult to solve, but it's easy to verify that a solution is correct).
  - [Software 2.0 automates what we can verify](https://x.com/karpathy/status/1990116666194456651). If a task/job is verifiable, then it is optimizable directly or via reinforcement learning, and a neural net can be trained to work extremely well.
- [The use of LLMs and agents can be successful on tasks that are](https://x.com/nateberkopec/status/2058014104854626490); verifiable, brute forceable, automation-like, PoC friendly.
- "AIs" can be dangerous in under-specified environments (e.g: pausing games to last longer in the level) but those are the places where we will use them most. If something is well specified, there might be better solutions/optimizations (maths, code, ...).
- LLMs are helpful when you want the output/result and don't need to do the work yourself (e.g: [going to the gym](https://danielmiessler.com/blog/keep-the-robots-out-of-the-gym) doesn't work if the weights are automatically lifted).
- [The work/gym test comes after capability and trust](https://www.schneier.com/blog/archives/2026/07/should-you-use-ai-for-a-task-heres-a-simple-way-to-decide.html). Delegate only when AI can perform the task reliably and its mistakes are minimal, detectable, and correctable.

## Expertise and Outcomes

- AI tools amplify existing expertise rather than replacing it. [Start with a concrete problem, not an AI initiative](https://ludic.mataroa.blog/blog/i-will-fucking-piledrive-you-if-you-mention-ai-again/).
  - AI is a tool, not the strategy.
  - AI projects inherit ordinary software-project risks and add model and data uncertainty.
  - [Domain expertise is an important prompting skill](https://www.seangoedecke.com/llms-reward-expertise/). It helps you spot suspicious output, ask codebase-specific questions, suggest better approaches, and push the agent toward simpler solutions.
- AI speeds up generation, not necessarily throughput. Bottlenecks are often upstream: unclear scope, missing context, legal/product/domain ambiguity.
- [Typing faster was never the main software bottleneck](https://frederickvanbrabant.com/blog/2026-05-15-i-dont-think-ai-will-make-your-processes-go-faster/). Software is mostly decisions, tradeoffs, and understanding.
  - Use AI to reduce friction around the bottleneck, but first identify the real bottleneck.
- [Measure actual adoption and complete outcomes](https://ludic.mataroa.blog/blog/ai-mania-is-eviscerating-global-decision-making/). Demos, license purchases, token use, and generated output are not evidence of value.
- As models become more capable, the bottleneck shifts toward knowing what we want and knowing how to verify that we got it.
- In a world of abundant, near-unlimited coding capacity, human taste becomes most of the game.
- [Generalists might increasingly outperform specialists](https://x.com/karpathy/status/2015883857489522876).
  - The skill you want to build is the ability to understand problems and have some concept of how to solve them.
- [[Company Knowledge Management|Using AI as a team]] is very different than using AI for you.
- Ultimately, [we are the agents](https://mitsuhiko.github.io/talks/me-and-the-machine/). Use these tools to amplify your own abilities. Give them direction, not simple questions. Engineer feedback loops to make them more reliable. Build systems that let you focus on what matters.

## Thinking and Communication

- Don't delegate [[Thinking|thinking]], delegate work. [Don't outsource thinking](https://erikjohannes.no/posts/20260130-outsourcing-thinking/). That means tasks that:
  - Build complex tacit knowledge you'll need for navigating the world in the future.
  - Are an expression of care and presence for someone else.
  - Are a valuable experience on its own.
  - Are deceptive to fake.
- When AI is "right", people become less skilled. When AI is "wrong", you need skilled people to catch and fix the errors.
- Technical capability does not erase ethical obligations around [consent, privacy, and hidden human labor](https://ludic.mataroa.blog/blog/i-will-fucking-piledrive-you-if-you-mention-ai-again/), [licensing and creators' rights](https://ludic.mataroa.blog/blog/contra-ptaceks-terrible-article-on-ai/), professional responsibility, and the consequences of failure.
- [When the main purpose of writing is to demonstrate your thinking (building trust, applying for a job), don't use LLM output](https://x.com/HamelHusain/status/1976720326106173673). Use LLMs when you need to communicate info, or do admin stuff, where the person really just wants info and doesn't need to be convinced "how you think". LLMs are good at writing but bad at thinking.
  - Personal communication and writing as trust and self-expression. Rewriting with LLMs changes meaning, blurs authorship, erodes voice.
  - **What you send should take more effort to produce than it takes the recipient to read**. Raw, unread, unrequested AI output ([sloppypasta](https://stopsloppypasta.ai/en/)) pushes the cost of reading, verifying, and distilling onto everyone else.
  - If you do share AI output, disclose it and ideally link the chat. The conversation is more reusable than the transcript, and others can fork your context instead of re-reading your output.
  - If I can have a robot say something, so can you. It reads as inconsiderate to post un-digested AI output as though it's your own writing.
- [**If you are requesting human attention, demonstrate human effort.**](https://tombedor.dev/human-attention-and-human-effort/)
- AI won't solve [[Governance]]. Don't delegate decisions to it that impact other humans.
- For now, AI generated content should be consumed by you, not shared with others. This applies to code, bug reports, emails, and so on.
  - [Don't send LLM-generated content](https://x.com/ankrgyl/status/2030372464900067572). Send a human the prompt and let them run their own LLM. [If your prompt is too embarrassing to send, reconsider your communication](https://x.com/davidcrawshaw/status/2030411715045892305).
