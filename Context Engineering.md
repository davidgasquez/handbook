# Context Engineering

- Context engineering is [the discipline of designing and building dynamic systems that provide the right information and tools, in the right format, at the right time, to give an LLM everything it needs to accomplish a task](https://www.philschmid.de/context-engineering).
- Context engineering is curating knowledge as a continuously maintained [[Data Engineering|data product]] that delivers the smallest useful set of relevant, trustworthy, and fresh information to an agent at the right time. The goal is to [encode expert judgement into the infrastructure to allow agents to produce correct analysis](https://x.com/sh_reya/status/2094279496497266948).
- [Context includes prompts, instructions, retrieved documents, tool calls and results, history, memory, and output schemas—not just retrieved knowledge](https://github.com/humanlayer/12-factor-agents/blob/main/content/factor-03-own-your-context-window.md).
- [Output is the product of context and weights](https://www.dbreunig.com/2026/10/24/the-state-of-context-engineering.html). You can go bigger (expensive), think harder (slow), or improve the context (cheap and fast).
- The job is choosing where to be deterministic (code) and where to be probabilistic (the model). Context assembly keeps moving from model calls into the [[Agentic Engineering|harness]].
- Every capability advance moves the problem. Long contexts let in more bad information. Long-horizon agents run longer than they should.

## Selecting and Loading Context

- Everyone wants your context as their moat. Own context in a model-agnostic layer that outlives any agent, model, or vendor.
- Keep context headless and agent-readable. Expose definitions, owners, filters, code, values, lineage, and canonical sources through files and APIs rather than vendor-specific interfaces.
- Context is finite and has diminishing returns. You need to model and clean it.
  - Experiment with representations that improve information density and understanding.
  - Core tactics are augmentation, tool loadout, quarantine (subagents), pruning, offloading, and summarization. Prune what's irrelevant before summarizing.
  - [LLMs have bounded cognition too](https://shapeofthesystem.com/posts/2026/02/03/bounded-cognition). A context window is a hard limit on how much it can take into account at any one time. Design sessions so the model doesn't lose the thread.
- Context is king. Managing the context window effectively is crucial for getting good results.
  - Add websites as context with [jina.ai](https://jina.ai/) or [pure.md](https://pure.md/)
- [Use Progressive Disclosure](https://www.humanlayer.dev/blog/writing-a-good-claude-md) to ensure that the agent only sees tasks or project-specific instructions when it needs them.
  - Tool/skills overload confuses models. Just because you can connect every tool doesn't mean you should. Each tool description consumes context window space and can confuse the model about which tool to use when.
- Design against [three dominant failure modes: concept-to-entity ambiguity, stale knowledge, and retrieval failure](https://claude.com/blog/how-anthropic-enables-self-service-data-analytics-with-claude). Collapse competing definitions into governed sources, update context with the systems it describes, and route the agent into a small relevant search space.
- Good context is data plus interpretation, procedure, authority and memory.
  - Separate [declarative knowledge from procedural knowledge](https://claude.com/blog/how-anthropic-enables-self-service-data-analytics-with-claude). Sources of truth define what concepts mean, while thin routing and runbook skills specify what to consult, in what order, how to resolve ambiguity, and how to verify the result.
- Different source types need different modeling. Slack threads, CRM records, documents, and meetings should not share one generic chunking pipeline.
  - Pre-model recurring meaning from expensive unstructured data with versioned prompts and domain taxonomies. Preserve raw sources and lineage.
- Context transformations are [lossy compression](https://x.com/JoshARosen/status/2090067664911683687). Preserve canonical sources and lineage.
- The context window [is only the final delivery mechanism](https://x.com/JoshARosen/status/2090461097178341452) (deployment target).
- There is a big bottleneck on information retrieval. Even if you had a magical oracle with perfect information access, the agent (like humans) needs to know how to write the query and the oracle needs to know how to interpret it to fetch only the relevant information given that query.

## History and Memory

- Context is easy to mess up: [context poisoning, context distraction, context confusion, context clash](https://www.dbreunig.com/2025/06/22/how-contexts-fail-and-how-to-fix-them.html), and in agentic models, [context inertia and fighting the weights](https://www.dbreunig.com/2026/10/24/the-state-of-context-engineering.html). See [[Artificial Intelligence Models]] for training mismatch.
- [If you need to gather context, do that first in its own session](https://mariozechner.at/posts/2025-11-30-pi-coding-agent). Create an artifact that you can later use in a fresh session to give your agent all the context it needs without polluting its context window with tool outputs.
- Watch for [context inertia](https://www.dbreunig.com/2026/10/14/context-inertia.html). Long-running agents fixate on one hypothesis or subtask and keep pursuing it. Periodically reset the conversation while keeping the environment and a short handoff note.
  - [Examples in the history beat instructions](https://arxiv.org/html/2605.20382v3). Repeated contradictory turns override explicit instructions in every model. After many corrections, start fresh with the corrected spec.
- Memory needs strategic forgetting. Agent-written memories and skills accumulate conflicting one-off fixes over time. Expire, merge, and deprecate them.
- Scope memory by domain or project so unrelated contexts don't leak into each other.
- Model decisions, assumptions, evidence, and dependent work as a [typed graph](https://x.com/arscontexta/status/2105397004226494487).
- Package expertise with the means to apply it. Domain types and knowledge, skills, tools, and review interfaces. Keep project-specific evidence and decisions separate from reusable methods.
