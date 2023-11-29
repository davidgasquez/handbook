# Analytics Engineering

- Analytics Engineering is the organization of an organization's information.
- [Real impact comes from continuous decision-making and implementing actions with feedback](https://news.ycombinator.com/item?id=22808006).
- Accept that [analytics is a mess](https://benn.substack.com/p/analytics-is-a-mess).
  - Explicitly create separate workspaces for curated (production) and messy (experimental) work.
- Reports are rarely read, and often forgotten. [[Data Culture|Decision-making involves getting data, summarizing and predicting ad then taking action]].
  - One of the best ways to communicate data is telling stories. Stories are more captative and present a coherent view around a topic.
- [The analytics engineer workload is a lot like being a data librarian](https://www.youtube.com/watch?v=T0Z_ibd3Hx0).
  - If you are running a library you have these books coming in and you have people who are looking for books on specific topics and you've got to figure out a way to organize all those books so that all those people can find what they need. There are many different ways to organize books, not just one perfect solution. A librarian is interested in helping people find the books that they're looking for but also discovering new books that they didn't realize that they were looking for.
- [Analytics code should be version controlled, tested, modular and maintainable](https://www.getdbt.com/analytics-engineering/why/).
  - Define all resources ([[Dashboards]] in YAML, Cohorts in SQL, ...) as code.
  - Treat data the same way engineers treat code. That means CI/CD, tests, frequent PRs, ...
- Use [[Data Request Template]] when getting questions.
- Analytics work can be roughly split in two buckets:
  1. Building automated [[Systems]], from metrics to [[Dashboards]], to enable self-service use cases for business users. This is what we now typically call analytics engineering.
  2. Doing ad-hoc analyses, to answer some questions directly.
- Make your modeling approach explicit (e.g. [Dimensional Modeling](https://youtu.be/lWPiSZf7-uQ)).
- Modeling reality gets complex quickly. There are small nuances, special conditions, things that changed, edge cases and, of course, errors.
- Imagine your company today as a human society where only half the population can read (understand the data), one tenth can write (SQL queries), where half a dozen languages are spoken, and where most of the books ([[Dashboards]]/insight reports) in the library contain things that once were true but have since been outdated (but you don't know which ones). Not a highly productive information ecosystem.
- Domain knowledge is more important than your coding skills.
- Ground truth isn't a single place. Start by joining on common unique keys and counting things, then figure out what's different and why.
- [[Teamwork|Collaborate with your team]] and break down complex models into reusable pieces.
- Working with data is like exploring the horizon. It changes as soon as you look it from a higher place (more data).
- Find out what decisions your stakeholders need to make, repeatedly, and help with those.
- Attach a date to your team output resources ([[Dashboards]], analysis, ...) so they exist as artifacts that were true at a certain point on time.
- Reduce the areas where business logic can be injected, create "time to live" policies on last mile transforms, build a culture of standardizing + celebrating access to cross-functional codebases.
  - People default to writing business logic in the tool they are most comfortable with. The best way for data teams to prevent sprawling business logic is to limit last mile transforms in other tools and invite others into their tools. [The logic will be written, and if the data team gate-keeps, it will be written outside of their visibility](https://ian-macomber.medium.com/data-systems-tend-towards-production-be5a86f65561)! If a data team can educate and encourage contributions to their codebase, they invite code to be written where it most belongs.
- Modern data warehouses [might need new model design paradigms](https://github.com/ActivitySchema/ActivitySchema/blob/main/2.0.md).

## Resources

### Communities

- [dbt Community](https://www.getdbt.com/community/)
- [Locally Optimistic](https://locallyoptimistic.com/community/)

### Public Data Projects

- [GitLab](https://gitlab.com/gitlab-data/analytics/-/tree/master/transform/snowflake-dbt)
- [Mattermost](https://github.com/mattermost/mattermost-data-warehouse/tree/master/transform/snowflake-dbt)
- [Mozilla](https://github.com/mozilla/bigquery-etl)
- [Dagster Open Platform](https://github.com/dagster-io/dagster-open-platform)
- [MIT Open Learning](https://github.com/mitodl/ol-data-platform)
- [Our World in Data](https://github.com/owid/etl)
- [Catalyst Cooperative PUDL](https://github.com/catalyst-cooperative/pudl)
- [Spellbook](https://github.com/duneanalytics/spellbook/)
- [Flipside Crypto](https://github.com/FlipsideCrypto/external-models)
- [MetricsDAO](https://github.com/MetricsDAO)
- [RA Analytics](https://github.com/rittmananalytics/ra_data_warehouse)
- [Anomstack](https://github.com/andrewm4894/anomstack)

### Related [[Podcasts]]

- [The Analytics Engineering Podcast](https://open.spotify.com/show/4BKMMeVXk4jJnAQSqGSJvE)
- [The Right Track](https://www.heavybit.com/library/podcasts/the-right-track/)
- [The Sequel Show](https://open.spotify.com/show/3jEoi1pGXyQSGecv1xiLvQ)

### Newsletters

- [Benn Substack](https://benn.substack.com/)
- [The Analytics Engineering Roundup](https://benn.substack.com/)
- [Databased](https://pedram.substack.com/)
- [Inside Data](https://mikkeldengsoe.substack.com/)
- [Practical Data Science](https://harterrt.substack.com/)
- [The Sequel](https://thesequel.substack.com/)
- [Towards Analytics Engineering](https://towardsanalyticsengineering.substack.com/)
