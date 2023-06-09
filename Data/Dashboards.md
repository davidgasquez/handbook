# Dashboards

[Dashboards create a shared sense of reality](https://benn.substack.com/p/data-is-for-dashboards) and help everyone understand whats going on better. They exist for the purpose of quickly and concisely answering questions. [Understanding must come before action](https://sarahsnewsletter.substack.com/p/what-substack-analytics-engineers). Understanding also helps us ask the right questions.

## Best Practices

- [Before you dive into how to build a dashboard, the first thing you should ask yourself is whether this is the right tool for your situation.](https://shopify.engineering/make-dashboards-using-product-thinking-approach) Understand your problem and your audience; design a dashboard that does one thing really well, for a clear set of users.
  - Answer three specific questions: [How, What, How](https://youtu.be/g2-dkJkZjiI)?
- Strive to create dashboards that are either standalone or include links to provide the relevant context. Without meaning, data is just digits.
- [Add all the possible context into the dashboard](https://www.youtube.com/watch?v=Kub2bXrKmOE):
  - Instructions.
  - Purpose and explanation of the data being shown.
  - Caveats and assumptions.
  - Extra Context:
    - Why this dashboard exists.
    - Who it's for.
    - When it was built, and if and when it's set to expire .
    - What features it's tracking via links to team repositories, project briefs, screenshots, or video walk-throughs.
  - Take-aways.
  - Metadata (owner, related OKRs, TTL, …).
- Make them so its easy to go one layer down (X went down in Y location, or for Z new users, etc).
- Recreate dashboard from first principles periodically.
- When plotting a rate, add the top of funnel and bottom of funnel numbers to make sure things are as expected.
- Be clear with your stakeholder about whether this is a one-off vs. something that should be referenced more than once.
- Add an [explicit expiration date so it doesn't mold](https://mikkeldengsoe.substack.com/p/moldy-data).
- [Have meetings where you check and discuss the metrics on the dashboard](https://counting.substack.com/p/the-utility-of-an-unwatched-dashboard). This creates a powerful forcing function to look at the thing.
- Follow up and iterate on your work by marketing, improving and maintaining it into the future.

The value is that now discussions are happening about the data.

- Self-serve Analytics is a tricky balance:
  - The more questions people can theoretically self-serve, the fewer they can practically self-serve. The complexity of the stack grows with each option that gets added to give more flexibility.
  - In the other hand, people will self serve anyways. Control and clean the environment so they don't have to rely on odd methods to get the probably wrong data. The people that can write SQL are not usually the same people that need the data.

## Issues with Dashboards

- Dashboards were created to monitor and not to derive insights.
  - Dashboards report on current status. Users don't act on status. They act on change in status.
  - Dashboards (lines and rectangles) are useful to notice if something goes wrong.
  - **It's usually not possible to generate meaningful insight simply by looking at line charts in a dashboard** A chart alone cannot possibly convey everything, and that kind of thinking inhibits our ability to influence the business with our work.
  - Specially, if [there are 10 unrelated charts in the same dashboard](https://www.deathofdashboards.com/).
- Building a dashboard requires gathering lot of context. Once built, only a few users aware of all the context can really use it in the proper way.
- [They can serve endless needs, but in doing so, rarely do they serve _particular_ needs perfectly](https://win.hyperquery.ai/p/analysis-or-dashboard).
- Dashboards shouldn't be single-use
  - Ask this:
    - Can this new dashboard request be added into an existing one?
    - What are you going to do differently by looking at the Dashboard? Focus on that [[Metrics|metric]] and add it to the main Dashboard
  - Beware of the death by 1,000 filters: After a dashboard had gone live, you'll be  flooded with requests for new views, filters, fields, pages, everything
  - Dashboards are decision-making infrastructure, and infrastructure needs to be maintained. Be explicit about which Dashboards are disposable and add a TTL to them.
- The numbers and charts on a dashboard very rarely have any direct personal meaning to the people using it. There's tons of other work to do, and unless that dashboard is directly tied to your performance or compensation, there are probably more important things to look at. People are more likely to check stock prices when they actually own (and thus benefit from) the stock.
- While democratization of data is certainly an awesome thing, pure democracy is anarchy (poorly curated and contextualized data shared through a bunch of channels).
  - Poor curation leads to confusion (which dashboard do I use), distrust (dashboards are wrong) and waste (unused content, unnecessary maintenance).
- If you make data scientist do reporting and dashboards all day all the good ones will quit and the ones left will be mediocre at best ([1](https://twitter.com/sethrosen/status/1306605742452076548), [2](https://twitter.com/sethrosen/status/1383148819441913857), [3](https://greatexpectations.io/blog/one-more-stratification/)).
- [Some of the problems of dashboards](https://twitter.com/EmilyGorcenski/status/1397066345947308034):
  - They're hard to version control.
  - They're hard to test.
  - They let you hide code.
  - That hidden code becomes de-facto business logic.
  - They are a terminator in an [[automation]] chain
- Dashboards represent an endpoint in an automated workflow. Which means they create an open-loop system. It's very hard to link the dashboard that was observed to the decisions, and therefore the effect of those decisions, taken based on what was observed.
- Dashboards enable managers to look at data and make decisions. There are a lot of assumptions here:
  - That sufficient context is presented with the data.
  - That the data is correct.
  - That the transformation logic is correct.
  - That the data is complete.
