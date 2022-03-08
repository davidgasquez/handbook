# Data Culture

- The data team needs to be focus on delivering insights and supporting decisions. The outcome of the data team are _decisions_ and a a shared context across the organization.
	- Your goal as a data professional is to facilitate [[Making Decisions | decision making]].
	- Learning to drive decisions quickly, a bias to action, is a critical competency for an analyst. Every skill you learn – [[communication]], [[writing]], [[experimentation]], [[Metrics | metric design]] – supports this.
	- If analysis is not actionable, it does not really matter. Analysis must drive to action.
	- [Clear results won't spur action themselves](https://www.linkedin.com/posts/eric-weber-060397b7_data-analytics-machinelearning-activity-6675746028144205824-CQxW/). The organization needs to be ready to pivot when something isn't working.
	- [Data's impact is tough to measure — it doesn't always translate to value](https://dfrieds.com/articles/data-science-reality-vs-expectations.html).
	- The Data Team should be building and iterating the [Data Product](https://locallyoptimistic.com/post/run-your-data-team-like-a-product-team/).
- Data is fundamentally a collaborative design process rather than a tool, an analysis, or even a product. [Data works best when the entire feedback loop from ideation to production is an iterative process](https://pedram.substack.com/p/data-can-learn-from-design).
	- [To get buy in, explain how the business could benefit from better data](https://youtu.be/Mlz1VwxZuDs) (e.g: more and better insights). Start small and show value.
	- Run _Purpose Meetings_. These are 30 min meetings in which stakeholders, engineers and data align on the goal of a release and what is the best way to evaluate the impact and understand its success. Align on the goal, commit on metrics and design the data.
- [Data teams should be a part of the business conversations from the beginning](https://cultivating-algos.stitchfix.com/). Get the data team involved early, have open discussions with them about the existing work, and how to prioritize new work against the existing backlog. Don’t accept new work without addressing the existing bottlenecks, and don’t accept new work without requirements. **Organizational [[politics]] matter way more than any data methods or technical knowledge**.
	- Including data people in meetings causes happy accidents!
	- The layout of the organization impacts time of the information to propagate and adds losses.
	- Data should report to the CEO. Ideally at least with some weekly metrics split into (a) notable trends, (b) watching close, and (c) business as usual.
	- If data is the most precious asset in a company, does it make sense to have only one team responsible for it?
		- [People talk about data as the new oil but for most companies it’s a lot closer uranium](https://news.ycombinator.com/item?id=27781286). Hard to find people who can to handle or process it correctly, nontrivial security/liabilities if PII is involved, expensive to store and a generally underwhelming return on effort relative to the anticipated utility.
	- [The pain in data teams come from needing to influence PMs/peers with having little control of them. Data teams need to become really great internal marketers/persuaders](https://anchor.fm/census/episodes/The-evolution-of-the-data-industry--data-jobs-w-Avo-CEO-and-Co-founder-Stefania-Olafsdottir-e16hu1l).
- **Integrate data where the decision is made**. E.g: Google showing restaurant scores when you're looking something for dinner.
	- Reduce the time to insights. If the data is already in the tool you're using, then there's zero time to insights. Provide a set of tools with the same data and let people choose depending on the goal.
- [Earning the authority to deny requests is one of the most important factors to running a world-class data team](https://twitter.com/teej_m/status/1420432376270782464)
- Create a single space as the central place to post [[Data Request Template | data requests]].
- Create a single space to share the results of analysis and decisions made based on them.
	- Log changes so everyone can jump in and be aware of what’s going on.
	- Log assumptions and lessons learned somewhere. This information should loop back into the data product.
- Make the warehouse the source of truth for all the teams.
	- What data is Finance/HR/Marketing using to set their OKRs? Put that on the warehouse and model it.
- Do you want better data? Hire people interested in data!
- **When things are going well, no one cares about data**. That gives you a great way to use data. The right time to present data is when things are starting to go bad. Use your early warning detection systems to understand when it looks like it's gonna be time for data to step in and save the day and then position data as a solution in the context of whatever meaning makes sense. The stakeholders are decision makers and they don't have a ton of time. They're looking to make decisions, they're looking to solve problems.
- No one gets promoted for doing a good tracking work. People get promoted for delivering features.
- [If a stakeholder wants to know if users behave a certain way you can apply this heuristic](https://twitter.com/teej_m/status/1456719714420289536): assume they do - what decision would we make? What's the risk of just making that decision now? Risk is low? Just make it. Risk is uncertain? Let's [[Experimentation | run an experiment]].
- You won't have the best allocation of resources in a reactive team. Data teams need extra [[slack]]. [Balance user requests with actual needs](https://scientistemily.substack.com/p/product-management-skills-for-data).
- How can we measure the data team impact?
	- Making a [[Writing a Roadmap | roadmap]] can help you telling if you are hitting milestone deadlines or letting them slip.
	   - Embeddºed data team members need to help other teams build their roadmap too.
	- Also, having a changelog will help show the team impact on the data product across time.
- [Push for a _centralization of the reporting structure_, but keeping the _work management decentralized_](https://erikbern.com/2021/07/07/the-data-team-a-short-story.html).
- Unify resources (datasets, entities, definitions, metrics). Have one source of truth for each one and make that clear to everyone. That source of truth needs heavy curation. Poor curation leads to confusion, distrust and…. lots of wasted effort.
	- Aim to share the source of truth with the production code. Usually database information is better than tracking information.
	- Data should be defined unambiguously in a single place. Anyone can look up definitions without confusion.
	- If definition or business logic is changed, backfills should occur automatically and data remains up-to-date.
- [Organizations have _too much_ data. Without better ways of organizing it, large volumes of data are more overwhelming than useful.](https://towardsdatascience.com/good-data-citizenship-doesnt-work-265f13a37fa5)
	- Use the questions people are asking to find data _hotspots_ and focus our energy on those. That means some corners of your data will be messy, and some concepts will go undocumented. Data is perennially broken and messy. **Embrace the mess**.
	- Get excited when people ask questions. Embrace confusion and curiosity. Offer help. Be friendly.
	- [Reality is complex and multidimensional and often difficult to comprehend](https://mobile.twitter.com/rahulj51/status/1485429967131639808).
	- Document data when it’s generated. Make it part of the process of adding a new event, table, or a replication job, when the change is already top of mind. If possible, embed it in the development process, and pester people when they don’t include the necessary updates. This shifts the burden of documentation upstream, making it part of the development cycle.
- The modern data team needs to have _real organizational power_—it needs to be able to say "no” and mean it. If your data team does not truly have the power to say no to stakeholders, it will get sent on all kinds of wild goose chases, be unproductive, experience employee churn, etc. This is one of the reasons why data should report directly to the CEO.
- [To achieve distribution, build for who your stakeholder truly is, not for the stakeholder you want them to be](https://ian-macomber.medium.com/launching-and-scaling-data-science-teams-three-years-later-f1fa6f25b4ae).
- You should have something that answers the following questions:
	- Is [[Data Quality | Data Correct]]?
	- Is Data up to date?
	- Is Data Accessible and Discoverable?
	- Is Data Secure?
- [Aim for a culture of celebrating measurable progress and learnings, versus celebrating shipping](https://erikbern.com/2021/07/07/the-data-team-a-short-story.html).
- Align company on key actions. Every stakeholder should know how to explore that data.
- Do pre-mortems. Where would we see the impact of *X* going wrong? Model that and plot it on a dashboard.
- [Send surveys](https://docs.google.com/forms/d/e/1FAIpQLSfufs_0zOGlFiE6oqrdZU7xCi399CBYbIlZkAMe15GTRRcPZA/viewform) from time to time trying to get pain points and know where issues are.
- [Bring the collaboration process inline with the assets to allow for better handoffs and feedback](https://pedram.substack.com/p/data-can-learn-from-design).
- Imagine your company today as a human society where only half the population can read (understand the data), one tenth can write (SQL queries), where half a dozen languages are spoken, and where most of the books ([[Dashboards]]/insight reports) in the library contain things that once were true but have since been outdated (but you don’t know which ones). Not a highly productive information ecosystem.
- [Culture eats strategy (and tools) for breakfast](https://news.ycombinator.com/item?id=29062266). Until there’s a cultural mindset shift towards how companies value data and metadata, nothing will ever truly change.
- Most of the work done in data is in an effort to **reduce entropy** — Model data to remove inaccuracies, turn commonly asked questions into self-serve reports, and funnel ad-hoc questions into a formalized request process. This kind of attitude the nature of data practitioners. In the case of driving decisions with data, **embrace the chaos**.
	- [Navigating the chaos to arrive at a trustworthy recommendation is one of the most important jobs to be done.](https://roundup.getdbt.com/p/iterating-on-your-data-team). Decisions usually need to be taken faster and data analyst are [not invited to the table early enough](https://petrjanda.substack.com/p/bring-data-analyst-to-the-table). Again, be lean and iterate.
	- Data is _not_ a “set it and forget it” kind of activity. Your dashboard _will_ get stale in less than six months. Your key metrics _will_ eventually have bad data in them. That machine learning model you spent all of last quarter developing _will_ **[drift](https://towardsdatascience.com/model-drift-in-machine-learning-models-8f7e7413b563)** from its original fit. The environment in which your business operates is constantly changing, and so will the product or service that your business delivers. As a result, what is knowable about your business, about your product or service, is constantly changing too. And fast.
- Data trust issues come when data producers and data consumers doesn't work together. Aim to shorten the data loop. E.g: [The feedback loop for the performance engineer is much faster and reliable (same person tracks and analyzes) than for the standard engineer that doesn't look at the data to see the impact they made with their changes.](https://www.heavybit.com/library/podcasts/the-right-track/ep-8-defining-the-data-scientist-with-josh-wills-of-weavegrid/)
	- [Product analytics should be part of the product life-cycle the same way writing unit tests is](https://youtu.be/qK6vAJKh6fo). That is, without a middleman and having data involved from the start.
	- It doesn't make sense to release something if you can't tell how is performing!
	- [Have regular cleanups and audits to keep data in check](https://www.avo.app/blog/data-literacy-why-people-dont-trust-data-tips-from-patreons-dir-of-data-science). They are crucial to keeping your data trust up to par.
- We're moving from software consumers to data consumers. Data and BI will become more and more federated (you get data insights on your JIRA card without having to leave JIRA)
- Over time, data literacy across organizations will become commonplace the same way typewriting has. [Most professionals, at all levels of the business, will be capable of generating their own insights without requiring a data team](https://roundup.getdbt.com/p/data-expertise-everywhere).
- Data practitioners acknowledge that solid reporting is at the bottom of the data hierarchy of needs but few companies do even basic KPI reporting well.
	- [Doing the fundamentals really well almost always exposes how little is actually understood about why things are happening. it’s uncomfortable for high performing people to acknowledge that your grip on the levers is slippery](https://twitter.com/gwenwindflower/status/1498822586255519744).
- [Data ownership is a hard problem](https://www.linkedin.com/posts/chad-sanderson_heres-why-data-ownership-is-an-incredibly-activity-6904107936533114880-gw8n/). Data is fundamentally generated by services (or front-end instrumentation) which is managed by engineers. CDC and other pipelines are built by data engineers. The delineation of ownership responsibilities is very rarely established, with each group wanting to push 'ownership' onto someone else so they can do the jobs they were hired for.
- [Becoming a data-driven organization is a journey, which unfolds over time and requires critical thinking, human judgement, and experimentation](https://hbr.org/2022/02/why-becoming-a-data-driven-organization-is-so-hard). Fail fast, learn faster.

## [Sharing Data Insights](https://locallyoptimistic.com/post/share-your-data-insights-to-engage-your-colleagues/)

 Sharing your data insights across your organization facilitates collaboration and mutual learning – increasing data literacy across the company. It also helps remind folks that members of the data team can be strategic partners, creating opportunities for proactive brainstorming that can drive innovation.

 The aim is to answer the following questions each time:
 1. **What am I looking at?** A **short-but-informative title** can tell people immediately what data is the focus of the insight.
 2. **What should I learn from this?** or, Why should I care? Include the **most useful information,** and/or a **clear takeaway**. For folks who only have a few seconds to scan the message, it should be **easy to spot** the **most valuable** bit of the insight, the **reason** this exploration was considered worth sharing.
 3. **What caught my eye?** Share a chart or a related resource!
 4. **What if I want to know more?** A **link to additional information** can be valuable for people who have time for more than a quick scan and want to understand how you developed the insight, or do some of their own related exploration.
 5. **What if I have a question?** Explicitly **inviting questions** and responses is crucial. It’s the best part of sharing an insight! This is where you get to learn about things your colleagues know that you don’t, or what they’re curious about but has not yet risen to the level of becoming a data request from them.
 6. **What if posting this prompts a whole bunch of follow-up questions, or exposes incorrect assumptions?** If you have hit on something that’s interesting to a lot of people there likely will be questions that spin off, new ways to slice the data you’re looking at, or assumptions you have made that need to be corrected.
