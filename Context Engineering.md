# Context Engineering

Context engineering is curating knowledge as a continuously maintained [[Data Engineering|data product]] that delivers the smallest useful set of relevant, trustworthy, and fresh information to an agent at the right time.

- Everyone wants your context as their moat. Own context in a model-agnostic layer that outlives any agent, model, or vendor.
- As [analysis becomes cheap, consensus becomes scarce](https://www.iandmacomber.com/blog/post-ai-data-stack). Encode expert judgment so equivalent, authorized questions produce the same definitions, evidence, and answers across models and interfaces.
- Keep context headless and agent-readable. Expose definitions, owners, filters, code, values, lineage, and canonical sources through files and APIs rather than vendor-specific interfaces.
- Context is finite and has diminishing returns. You need to model and clean it.
- Every company needs to build and maintain their [[Company Knowledge Management]] system as a source of grounding for their agentic tooling.
- There is no single "company brain" like there is no single source of truth for metrics.
- You can't simply index data from different sources and expose it all raw.
  - Copying every table into a lake never solved analytics. Indexing every document will not solve context.
- Good context is data plus interpretation, procedure, authority and memory.
  - A company-owned layer should encode metric definitions, grain, exceptions, historical changes, and trusted evidence paths.
- Different source types need different modeling. Slack threads, CRM records, documents, and meetings should not share one generic chunking pipeline.
  - Pre-model recurring meaning from expensive unstructured data with versioned prompts and domain taxonomies. Preserve raw sources and lineage.
- Context transformations are [lossy compression](https://x.com/JoshARosen/status/2090067664911683687). Preserve canonical sources and lineage.
- The context window [is only the final delivery mechanism](https://x.com/JoshARosen/status/2090461097178341452) (deployment target).

## Company Context Repository

A system that tells the model how a company works, what happened before, which constraints matter, what a particular customer means, how terminology is used internally, which decisions have already been made, and what the organization currently believes to be true. Some of that is durable institutional knowledge, while some of it is live state, retrieved facts, permissions, relationships, and task-specific material.

The work that needs to be done is to determine which information is authoritative, what happens when sources disagree, where claims came from, and which downstream context should change when a decision changes. [The company also needs to decide what agents can write back, who reviews those changes, when old information expires, which agents can see which material, and what context actually contributed to a particular result](https://x.com/JoshARosen/status/2087152534964089238).

- Writing, rejecting PRs, and renaming terms on a [shared context layer](https://www.context.ai/blog/a-filesystem-for-context) is the way the organization "thinks" and compacts knowledge.
- Make "Who knows?" a first-class operation
- Treat the brain as a [data product](https://x.com/hnshah/status/2082944736428695776)
  - Bring external sources into a controlled data plane where they can be validated, normalized, permissioned, cached, and observed.
  - Retrieval failures should feed the [pipeline](https://read.technically.dev/p/everything-is-a-pipeline)
  - Repeated questions, corrections, rejected answers, and missing evidence should change models and artifacts
  - Humans review and approve changes to core artifacts
  - Compound by creating a shared layer of context
- Different tasks need different projections over shared company knowledge.
- Businesses already have plenty of context, just not coherent context. [Curate context the same way you curate data](https://x.com/sethrosen/status/2090053608838484010).
- [Knowledge work needs all different types of output](https://x.com/sethrosen/status/2088254987142934907) (docs, trainings, sheets, landing pages), and these all have to stay coherent with each other as the business moves or they are useless.
- [Bring curated data to the model](https://x.com/JoshARosen/status/2086863671657980138). The more tools you give an agent to reach directly into the outside world, the harder it becomes to know what entered its context, where it came from, whether it changed, or whether it was compromised.
