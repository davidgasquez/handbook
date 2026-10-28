# Company Knowledge Management

All [[Organizations]] produce some kind of knowledge. If not properly managed, it'll live in your ex-employees, oral history, and tribal knowledge.

If we think about a company as an organism, then a **knowledge management system is essentially the (collective) brain that keeps that organism alive and running**. A corporate knowledge management system, *ideally*, contains every single bit of codifiable information within the company resulting in a library of all projects, [[processes]] and procedures.

**Managing an organization's knowledge is mainly a people problem**, not a technology problem. If the [[Culture]] is not properly set up, no one will do it and no amount of technology is going to help you magic it out of the ether.

## Principles

There are some basic principles and [[values]] that will make maintaining and evolving a knowledge base easier over time.

- **Transparency**. Everyone has access to everything.
- **Iterative Improvements**. Everything is a WIP. No need to say it'll be updated later or add dates to pages.
- **Permissionless**. Anyone is able to edit anything. Similar to GitHub Pull Requests. Later, the resource owner can accept or reject the change.
- **Interconnected**. Links between everything!

## Key Ideas

- [[Documentation]] and PM can make a company 10x better.
- Have an opinionated way of doing internal documentation that works for your [[Organizations|organization]] and [[Culture]].
- Every employee should contribute.
- Resources have owners, contributors, reviewers (similar to [[Git]] roles). One of the owner's roles is to keep it up to date and consistent with the rest of the knowledge base.
- Each kind of document should have an explicit place. A place for everything and everything in its place.
  - Keep a source of truth and keep it up to date. When something is not relevant anymore, deprecate or delete it. All the documents should evolve.
  - Avoid duplicating knowledge. For each question there is one and only one answer.
- Link everything together.
  - The documentation should have backlinks and block references to incentivize small chunks of atomic [[Ideas|ideas]].
- When doing presentations, don't present slides, present the content of the [[Company Handbooks|company handbook]].
- Information should be easy to add (input) as well as easy to search and find (output) resulting in quick knowledge transfer between different employees.
- [[Writing]] something in the wrong place is the same as not writing it.
- Reduce the number of alternatives where information might be stored. GitLab uses [[git]], Basecamp uses Basecamp, ...
- [If it will matter after today, stop talking about it in a chat room](https://critter.blog/2021/01/12/if-it-matters-after-today-stop-talking-about-it-in-a-chat-room/)
- Always overshare. It's faster to filter out information than to ask and then wait for it.
- For complex and big decisions, aim for 3 levels of curation.
- [Decisions (and rationale) must be documented in a durable location. At GitHub they used to say everything should have a URL](https://haacked.com/archive/2020/04/07/introducing-aboard-beta/). That gives the company a **Decision Log**.
- Important documents like Roadmaps should be easy to discover and people should be able to comment on and have discussions around them. That promotes keeping it up to date.
- [[Design Docs]] should have an explicit place, also acting as a historical log.
- [[Documentation]] should have a common entry point to increase discovery. Each team can have its own [[processes]] on top.
- At a company level, each team documents differently. To make the most of that, grow the knowledge organically and locally, not top down. Each team should have its own permissionless and open way of working and should be made public to the rest of the company. That way they can evolve the system to fit their needs. Then, there is a standard protocol to share information between teams.
  - The protocol serves as the team communications API. An abstraction over the inner workings of the team that is common to all the other teams.
  - E.g: Each team having a homepage [README](https://tom.preston-werner.com/2010/08/23/readme-driven-development) with links to their [[Slack]], ticket system, and processes.
  - Since the protocol is shared between apps, you can build different views on top of the knowledge and tasks via APIs.
- Add as much information to your tickets/issues as possible. If the tickets/issues are any good, you'll find relevant tickets with links and extra information. That makes it easy to tell what is current vs. what is 3 years old. The approach is something like Kafka (a log of everything that happened) versus a database with the current state of the world.
- [Every document you write can fall into one of two categories](https://clrcrl.com/2021/11/30/fighting-the-entropy-of-knowledge.html):
  - Type 1: A point-in-[[Time|time]] document, that should lose relevance at some point. e.g. meeting notes, feature specs that get completed, [[feedback]] that gets addressed
  - Type 2: A source of truth document, that should be maintained over time, e.g. "How work gets done at". May also be referred to as "evergreen" content.
- Keep some basic structure, but provide a good search.
- You can connect everything to Slack (search engine powered by humans).
  - Keeping information across N tools causes scattered information.
  - E.g. Integrate Notion with Slack so search is done from there.
  - [If Slack had access to your entire knowledge base, it could answer at least the most commonly asked questions automatically.](https://julian.digital/2020/11/20/chief-notion-officer/)
  - Ask questions in public channels! If someone sends you a handbook link, that means you have the answer documented - they don't mean that you should have found that yourself or that this is the complete answer. If the answer to a question isn't documented, make a pull request to add it to the handbook in a place you have looked for it.

## Agents

- Sharing [[Context Engineering|context]] within the organization is a critical part of a company being successful with agents.
- Every company needs to build and maintain their knowledge management system as a source of grounding for their agentic tooling.
- As [analysis becomes cheap, consensus becomes scarce](https://www.iandmacomber.com/blog/post-ai-data-stack). Encode expert judgment so equivalent, authorized questions produce the same definitions, evidence, and answers across models and interfaces.
- There is no single "company brain" like there is no single source of truth for metrics.
- You can't simply index data from different sources and expose it all raw.
  - Copying every table into a lake never solved analytics. Indexing every document will not solve context.
- A company-owned layer should encode metric definitions, grain, exceptions, historical changes, and trusted evidence paths.

### Company Context Repository

- A system that tells the model how a company works, what happened before, which constraints matter, what a particular customer means, how terminology is used internally, which decisions have already been made, and what the organization currently believes to be true. Some of that is durable institutional knowledge, while some of it is live state, retrieved facts, permissions, relationships, and task-specific material.
- The work that needs to be done is to determine which information is authoritative, what happens when sources disagree, where claims came from, and which downstream context should change when a decision changes. [The company also needs to decide what agents can write back, who reviews those changes, when old information expires, which agents can see which material, and what context actually contributed to a particular result](https://x.com/JoshARosen/status/2087152534964089238).
- Writing, rejecting PRs, and renaming terms on a [shared context layer](https://www.context.ai/blog/a-filesystem-for-context) is the way the organization "thinks" and compacts knowledge.
- [Co-locate context artifacts with the source systems they describe](https://claude.com/blog/how-anthropic-enables-self-service-data-analytics-with-claude), require both to change in the same PR, and evaluate the affected behavior before merging. Turn user corrections into regression cases and small reviewed context updates.
- Make "Who knows?" a first-class operation
- Treat the brain as a [data product](https://x.com/hnshah/status/2082944736428695776)
  - Bring external sources into a controlled data plane where they can be validated, normalized, permissioned, cached, and observed.
  - Retrieval failures should feed the [pipeline](https://read.technically.dev/p/everything-is-a-pipeline)
  - Repeated questions, corrections, rejected answers, and missing evidence should change models and artifacts
  - Humans review and approve changes to core artifacts
  - Compound by creating a shared layer of context
- [Shit in, shit out](https://news.ycombinator.com/item?id=49447493). You can't just flatten all the documents into plain text and then create embeddings. Most of the documents of any organizations are outdated or duplicated.
- Different tasks need different projections over shared company knowledge.
- Businesses already have plenty of context, just not coherent context. [Curate context the same way you curate data](https://x.com/sethrosen/status/2090053608838484010).
- [Knowledge work needs all different types of output](https://x.com/sethrosen/status/2088254987142934907) (docs, trainings, sheets, landing pages), and these all have to stay coherent with each other as the business moves or they are useless.
- [Bring curated data to the model](https://x.com/JoshARosen/status/2086863671657980138). The more tools you give an agent to reach directly into the outside world, the harder it becomes to know what entered its context, where it came from, whether it changed, or whether it was compromised.

## Sharing Updates

Whenever you need to thoroughly brief a group of people on an important matter, consider using a [5-paragraph format](https://xahteiwi.eu/resources/presentations/no-we-wont-have-a-video-call-for-that/):

1. Situation. What position you're in, and **why** you set out to do what you want to do.
2. Objective. **What** you want to achieve.
3. Plan. **How** you want to achieve it.
4. Logistics. What budget and resources are available, and how they are used.
5. Communications. How you'll be coordinating among yourselves and with others in order to achieve your goal.

## Resources

- [Encouraging a Culture of Written Communication](https://www.mcls.io/blog/encouraging-a-culture-of-written-communication).
- [Shopify - How we Get Shit Done](https://vimeo.com/456735890).
