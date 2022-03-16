# Analytics Engineering

- Analytics engineering is the organization of an organization’s information.
- [Real impact comes from continuous decision-making and implementing actions with feedback](https://news.ycombinator.com/item?id=22808006).
- [Analytics is a mess](https://benn.substack.com/p/analytics-is-a-mess). Explicitly create separate workspaces for curated (production) and messy (experimental, not-yet-production) work.
- Reports are rarely read, and often forgotten. [[Data Culture | Decision-making involves getting data, summarizing and predicting ad then taking action]].
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
- Attach date to data team resources ([[Dashboards]], analysis, ...) so they exist as artifacts that were true at a certain point on time.
- Make your modeling approach explicit.
- Modeling reality always get complex quickly. There are always small nuances, special conditions, things that changed, edge cases and, of course, errors.
- [[Teamwork | Collaborate with your team]] and break down complex models into reusable pieces.

## Resources

### Communities

- [dbt Community](https://www.getdbt.com/community/)
- [Locally Optimistic](https://locallyoptimistic.com/community/)

### Public `dbt` Projects
- [GitLab](https://gitlab.com/gitlab-data/analytics/-/tree/master/transform/snowflake-dbt).
- [Mattermost](https://github.com/mattermost/mattermost-data-warehouse/tree/master/transform/snowflake-dbt).
- [MetricsDAO](https://github.com/MetricsDAO?q=dbt&type=all&language=&sort=).

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
