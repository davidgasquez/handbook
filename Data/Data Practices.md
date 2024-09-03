# Data Practices

Some useful practices to keep in mind when working in a data team. They can be proposed as Data Improvement Proposals (DIPs) and discussed in the team.

## Data Request Template

Inspired by [Caitlin Hudon Intake Form for Data Requests](https://caitlinhudon.com/2020/09/16/data-intake-form/).

### Why?

- Quick way of gathering context needed for good analysis.
- People need to prepare and that means better kickoff conversation.
- Easier to triage and connect dots across requests.
- Creates easily referenced records of requests.
- Friction cuts down on lazy asks. Too much friction will disuade legit ask.

### Data Request Form

- What kind of deliverable would be most helpful for your request?
- Will you need this data again in the future?
- Which stats is this going to change or which action will be taken based on this data and by whom?
  - How can we measure our progress/success for each step?
  - What happens if we don't hit the target?
- What is the real problem you're trying to solve?
  - Frame the (initially vague) data questions this way: [How does _lever_ impact _KPI_?](https://www.narrator.ai/blog/how-i-frame-data-questions-to-make-analyses-more-useful/)
- What is the business question you're trying to answer?
- What decision will you make or action will you take with this data?
- [What are we trying to improve](https://twitter.com/ergestx/status/1758538405695086829)?
- **Request Description**
- Do you know where is the related data?
- What time period do you care about?
- Can this analysis be done in our current BI tools?
  - If yes, do you have a starting link?
  - If no, can [[Reverse ETL]] help?
- Which is more important?
  - Getting the answer quickly
  - Getting an accurate answer
- Any gotchas we should know about?
- What is the priority for this request? _Optional_
- Who will see this deliverable?
- How will this deliver business value within 90 days?

## Weekly Metrics Review

- Beware of the question "Why did metric X go down last week?" It's frustrating to not know. But the reality is that there's often random spikes of usage, seasonality, and other external factors. If you chase every dip, you'll make up narratives that aren't true.
- [You'll find 95% of metrics fall into "business as usual"](https://twitter.com/teej_m/status/1293637500703924225) and don't need to be discussed. When you report the weekly metrics, split into:
  1. Notable trends.
  2. Watching close.
  3. Business as usual.
- Make people talk and explore their metrics

## Data Platform UX Survey

We need to know what works, what doesn't and what people are using.

- [Asking about the data experience](https://docs.google.com/forms/d/e/1FAIpQLSfufs_0zOGlFiE6oqrdZU7xCi399CBYbIlZkAMe15GTRRcPZA/viewform)
- [https://locallyoptimistic.com/post/surveys/](https://locallyoptimistic.com/post/surveys/)
- [https://docs.google.com/forms/d/e/1FAIpQLSc-z4yCYX5cpbPTMUInLYurxYgY1UXd7iJOMGI_DAGc-wB17w/viewform](https://docs.google.com/forms/d/e/1FAIpQLSc-z4yCYX5cpbPTMUInLYurxYgY1UXd7iJOMGI_DAGc-wB17w/viewform)
- Is all the data you want available?
- What data is painful now?
- Is it difficult to find the data you want?
- Are there any known issues or limitations with the current set of tools or datasets?
- Do you trust the metrics/calculations presented?
  - Which ones do you trust?
  - Which ones do you not trust?
- Do you ever get confused about what a metric or data point represent?
- Do you know where to go for help with data questions?
- Do you feel like our data approach hinders your job performance?
- Are you happy with our data setup?
- Can these two resources request be merged with an existing artifact(Dashboard/Cohort)?
- Does X resource needs to be tagged as "curated"? Does Y needs to be deprecated?

## Sharing Data Insights

[Sharing your data insights across your organization facilitates collaboration and mutual learning – increasing data literacy across the company](https://locallyoptimistic.com/post/share-your-data-insights-to-engage-your-colleagues/). It also helps remind folks that members of the data team can be strategic partners, creating opportunities for proactive brainstorming that can drive innovation.

The aim is to answer the following questions each time:

1. **What am I looking at?** A **short-but-informative title** can tell people immediately what data is the focus of the insight.
2. **What should I learn from this?** or, Why should I care? Include the **most useful information,** and/or a **clear takeaway**. For folks who only have a few seconds to scan the message, it should be **easy to spot** the **most valuable** bit of the insight, the **reason** this exploration was considered worth sharing.
3. **What caught my eye?** Share a chart or a related resource!
4. **What if I want to know more?** A **link to additional information** can be valuable for people who have time for more than a quick scan and want to understand how you developed the insight, or do some of their own related exploration.
5. **What if I have a question?** Explicitly **inviting questions** and responses is crucial. It's the best part of sharing an insight! This is where you get to learn about things your colleagues know that you don't, or what they're curious about but has not yet risen to the level of becoming a data request from them.
6. **What if posting this prompts a whole bunch of follow-up questions, or exposes incorrect assumptions?** If you have hit on something that's interesting to a lot of people there likely will be questions that spin off, new ways to slice the data you're looking at, or assumptions you have made that need to be corrected.

### Slack Template

```md
![Chart]()

💡**One sentence summarizing the insights.**
📝 Some extra information that might be useful.
🔍 Dig deeper on link.com!

_Questions, concerns, ideas? Thread on!_ 🧵
```

## Charting Principles

[Some principles to keep in mind when creating charts](https://www.eugenewei.com/blog/2017/11/13/remove-the-legend).

- Don't include a legend; instead, label data series directly in the plot area. Usually labels to the right of the most recent data point are best. Some people argue that a legend is okay if you have more than one data series. My belief is that they're never needed on any well-constructed line graph.
- Use thousands comma separators to make large figures easier to read
- Related to that, never include more precision than is needed in data labels. For example, Excel often chooses two decimal places for currency formats, but most line graphs don't need that, and often you can round to 000's or millions to reduce data label size. If you're measuring figures in the billions and trillions, we don't need to see all those zeroes, in fact it makes it harder to read.
- Format axis labels to match the format of the figures being measured; if it's US dollars, for example, format the labels as currency.
- Look at the spacing of axis labels and increase the interval if they are too crowded. As Tufte counsels, always reduce non-data-ink as much as possible without losing communicative power.
- Start your y-axis at zero (assuming you don't have negative values)
- Try not to have too many data series; five to eight seems the usual limit, depending on how closely the lines cluster. On rare occasion, it's fine to exceed this; sometimes the sheer volume of data series is the point, to show a bunch of lines clustered. These are edge cases for a reason, however.
- If you have too many data series, consider using small multiples if the situation warrants, for example if the y-axes can match in scale across all the multiples.
- Include explanations for anomalous events directly on the graph; you may not always be there in person to explain your chart if it travels to other audiences.
- Always note, usually below the graph, the source for the data.
- Include targets for figures as asymptotes to help audiences see if you're on track to reach them.
