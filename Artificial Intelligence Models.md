# Artificial Intelligence Models

- LLMs build internal [[Knowledge Graphs]] in their network layers.
- LLMs are compressed information stores.
- Classic ML systems where humans are designing how the information is organized (feature engineering, linking, graph building) scale poorly ([the bitter lesson](http://www.incompleteideas.net/IncIdeas/BitterLesson.html)). LLMs are able to learn how to organize the information from the data itself.
- [LLMs may not yet have human-level depth, but they already have vastly superhuman breadth](https://news.ycombinator.com/item?id=42625851).
- LLMs have encyclopedic knowledge but suffer from hallucinations, jagged intelligence, and "amnesia" (no persistent memory).
- [LLMs are good at the things that computers are bad at, and bad at the things that computers are good at](https://www.ben-evans.com/benedictevans/2025/2/17/the-deep-research-problem). Also good at things that don't have wrong answers.
- LLMs as "stateless functions". Fixed weights, no updating. LLMs are in-context learners.
- LLMs are a lot better at fill in the blanks (the micro) than grand strategy (the macro).
- Model behaviour is not deterministic, intuition for one model doesn't transfer to other models, even within the same family or reasoning level, intuitions for one coding harness does not transfer to other harnesses, and so on.
- [Don't fight the weights](https://www.dbreunig.com/2025/11/11/don-t-fight-the-weights.html). Models are tuned to the tools in their training harness. Prefer tool shapes they already expect.
  - Repetition and ALL CAPS in a prompt usually mean you're fighting the weights. Change the setup instead of shouting.
- Understand [benchmarking](https://mlbenchmarks.org/) and what it really represents.
- [[Prompt Engineering]] (how to ask), and [[Context Engineering]] (what goes into the context window) are the levels you have to elicis useful responses.
