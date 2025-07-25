# Data Quality

- One of the biggest misconceptions about data is that **is correct** or it will be at some point. Data quality will always be an issue, defining metrics for data quality helps you know where you stand, improve over time, and align with your team.
  - Log data quality issues so you can act on them.
  - [We live in a messy world and as a result the data we collect and represent it are always going to be messy](https://twitter.com/KostasPardalis/status/1641122521775849497).
- Data quality [is a measurement of the value of data to the business, meaning it is dependent on the task trying to be accomplished](https://tayloramurphy.substack.com/p/data-quality). High quality data in one context can be low in another.
- [Data issues are fractal](https://www.speedwins.tech/posts/some-words-with-nuria-ruiz#question-7).
- [There are many common data quality problems already figured out](https://b-greve.gitbook.io/beginners-guide-to-clean-data/).
- Incremental data quality improvements can lead to measurable value back to the business. That's what you should focus on and this is what's going to help you with convincing people to care about data quality.
- Data quality is a team sport. Data is not the concern of just the DEs, ML Engs, Analysts etc. Data quality starts from the front-end. Did you check the JSON you sent on Rudderstack before merging that instrumentation PR?
- A table might be quality enough for one consumer but not for the other consumer.
- [[Data Culture|Data is a product]] and that means that you can do postmortems (5 whys) and incident reports on data quality issues.
- [There are two strategies to detect quality issues](https://towardsdatascience.com/data-observability-vs-data-testing-everything-you-need-to-know-6f3d7193b388):
  - Data Testing. Involves checking `null` values, distributions, uniqueness, known invariants, etc.
  - Data Observability. Since you can't predict all the failure modes, you can use automated monitoring, alerting, and triaging to identify and evaluate data quality issues.
- Four categories of characteristics about your data form [the four pillars of Data Observability](https://www.metaplane.dev/blog/the-four-pillars-of-data-observability):
  1. The *Metrics* and *Metadata* pillars describe the internal characteristics of our data itself and its external characteristics
  2. The *Lineage* and *Logs* pillars describe internal dependencies within our data and its interactions with the external world data at any point in time.
- Data Quality has many dimensions:
  - **Accuracy**: Does the data accurately describe the real world?
  - **Completeness**: How completely does the data describe the real world?
  - **Consistency**: Is the data internally consistent?
  - **Privacy and security**: Is data being used in accordance with the intended level of privacy and secured against undesired access?
  - **Freshness**: Does the data describe the real world right now?
  - **Reliability**: Is the data regarded as true and credible by the stakeholders? Does it contain duplicates?
  - **Usability**: Can be data be accessed and understood in a low-friction manner?
  - **Validity**: Does the data conform to business rules or definitions?
- You can use these [guiding principles to think about data quality](https://www.metaplane.dev/blog/data-quality-metrics-for-data-warehouses):
  - **Start from the use-cases**: What are the most important use cases of data within your organization?
  - **Identify the pain points**: Within those use cases, what data quality issues have caused the most trouble recently?
  - **Connect to data quality dimensions** and **describe how to measure as metrics**: Of the causes of recent trouble, how do they relate to the previous data quality dimensions?
  - **Make metrics digestible and actionable**: Lastly, how can we make those metrics useful?
