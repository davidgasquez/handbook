# Metrics

> If you cannot measure it, you cannot improve it — Lord Kelvin.

- Metrics are how we express how a company turns its inputs into outputs — how the company creates, captures, transforms, spends, and distributes value.
- Focus on 3 to 5 metrics. You may also want to consider counter-metrics (or pairing metrics) that keep you from [over-rotating on a singular metric](https://www.dataliftoff.com/wp-content/uploads/2022/10/tennis_balls-1536x2048.jpeg).
  - [Design **north star metrics that capture value to the customer** rather than value to your organization](https://roundup.getdbt.com/p/the-perfect-north-star-metric). Beware, optimizing against at a single north star metric is like looking exclusively at the score to get insight into how to win the game.
- Common understanding of a metric matters more than the metric precision. That understanding requires some standardization (names, time spans, ...) and that needs [[Coordination]].
  - Teams need to cooperate when defining metrics.
- Rely on the SMART framework (Specific, Measurable, Achievable, Results-Oriented, Targeted).
  - Pick the simplest metric that works for you. Metrics definitions should be as easy as a tool-tip away to find.
- [Metrics are a tool, but not the destination](https://breakingpoint.substack.com/p/you-have-too-many-metrics)! You want to use the fewest metrics possible to cover all the fundamentals of your business.
  - Pick a metric you want to improve or affect!
- Organizations need three things related to metrics:
  1. A [[Metrics|process for defining metrics]].
  2. A single source of truth for the metrics.
  3. A way to get metrics to all systems.
- Product metrics allow measuring product progress and creating alignment in an outcome-oriented way. There are many product frameworks available to help us think about the right key things to track. Think about **[product metrics that matter](https://uxdesign.cc/product-metrics-that-matter-951b9e4d4eca)** for you.
- Push a culture of metrics and goals as a source of learning, not promotions or success delegation.
- Vanity metrics are surface-level metrics. They're often large measures, like number of downloads, that impress others. **Clarity metrics** are operational metrics, like the number of minutes a day your product actually gets used or how long it took for a user to get service. These are the hidden gears that drive growth.
- [Factors that are easiest to measure or most visible are the ones that get the most attention and might not be the most important ones](https://wiki.c2.com/?SovietShoeFactoryPrinciple).
- [When people are pressured to meet a target value there are three ways they can proceed](https://www.goodreads.com/book/show/63859):
  1. They can work to improve the system.
  2. They can distort the system.
  3. Or they can distort the data.
- [Every metric you use should have an Operational Definition](https://twitter.com/ejames_c/status/1732621626259484953).
  1. A criterion — the thing you want to measure.
  2. Test procedure — how will you measure the thing?
  3. Decision rule — how will you decide if the thing you're measuring should be included in the count?
- A process is predictable if it just contains routine variation. It is unpredictable if it contains both routine and special variation. You can only improve a process if you first make it predictable.
- Metrics should help forming a working causal model of the business you're in so you know what interventions you can make and can predict the consequences.
- A metric set should map to a theory of change: input, output, outcome, impact.

## Good Metric Checklist

- **Specific and sensitive**: Metrics should be specific to the product or feature, and need to be explicitly and quantitatively defined. The metric should also be sensitive enough to measure the impact we expect to see.
- **Robust**: To complement the **sensitivity** criteria above, we also need to make sure the metric is measuring only the effect of the product of interest, and that it is not reactive to things we expect to change but don't control. Related to [internal validity](https://en.wikipedia.org/wiki/Internal_validity), we should try to avoid using a metric that can be significantly influenced by anything other than the product/feature we care about.
- **Measurable**: A metric must be something that we can actually measure. It's not uncommon to ideate a bunch of “ideal” metrics that would perfectly measure the impact of your product, but end up being impossible or infeasible to really capture.
- **Interpretable**: Metrics should be easy to understand and agreed upon by those whose success is measured by the metric. There's often a trade-off between simplicity and accuracy. Prefer simplicity, a metric that's hard to understand provides none of the benefits listed in the section below.

Remember that there are no objectively right answers. [There is no correct win rate waiting to be unearthed](https://mobile.twitter.com/bennstancil/status/1428837214545395712); one version is not true while another is false. Each version is equally accurate because they are tautological: They measure precisely what they say they measure, no more and no less. Your job as analysts is not to do the math right so that you can figure out which answer is in the back of the book; it's to determine which version, out of a subjective set of options, helps you best run a business.

### [North Star Metric Design](https://roundup.getdbt.com/p/the-perfect-north-star-metric)

- Define your customer [jobs to be done](https://hbr.org/2016/09/know-your-customers-jobs-to-be-done) and measure all of the ways this shows up in your product.
  - Measure more than one kind of activity if there's more than one job to be done.
- Decide how often you expect to see these activities from your customer when your product is fully utilized. You aren't measuring velocity of activity based on how fast you want your business to move and iterate, you're focusing on how often your customer is getting value.
- Test your assumptions. Is your resulting metric is explainable and predictable? Is it **easy** to communicate who you're building for and what problems you're solving, and is it **easy** to trace work being done in the company to positive customer outcomes?

## [Mistakes in Defining Metrics](https://brianbalfour.com/quick-takes/common-mistakes-defining-metrics)

- Metrics before Strategy. Your metrics are a reflection of your strategy. They help answer, is the strategy working? Metrics without strategy is looking at a bunch of random numbers. Define the strategy before you define your metrics.
- Definition Is More Important Than A Dashboard. People focus on "building a dashboard." Much more important is choosing which metrics are important and defining those metrics well. Defining is more complicated than people think... There are many ways to define a retention metric depending on your product. Your dashboard is a method to communicate your metrics, which is important, but useless if you choose and define them poorly.
- Outputs vs Inputs. Most metrics like a retention metric or revenue metric are output metrics. These are metrics you should monitor. Giving output metrics to teams as [[goals]] can be dangerous. They need to break them down into input metrics to make them actionable.
  - Output metrics represent results and input metrics represent actions.
  - When output metrics are given as goals, teams can often focus on the wrong inputs or thrash between inputs.
  - Focus on usage first (not revenue first). This is the most common version of outputs vs inputs.  Usage creates revenue, revenue does not create usage.  As a result, the most important metrics in terms of creating growth are not your revenue metrics, they are your usage metrics.
  - On a similar note, there are leading and lagging indicators. Leading indicators are usually input metrics and are harder to measure. Lagging indicators are usually output metrics and easy to measure.
- Mixing Up Retention and Engagement. Retention and engagement are not the same things. Retention is binary.  It answers the question, was this person active within my defined time period?  Yes or no. Engagement is depth. It answers the question, how active were they within the defined timed period? 0→N. Engagement is one of three major inputs into driving retention.
- Customers vs Users. A customer and a user is not the same thing in most business models.  A customer is defined as the person/group that is paying you.  A user is a person using the product.
- In subscription products, oftentimes there are multiple users associated with a single customer.  Or people are users before they are a customer.  You need to separate the definition and language between these two things for teams to clearly act on them.
- You don't need perfect accuracy sometimes. Moving in the right direction counts (i.e. fitbit heartrate is off but variance is still useful).

## Principles for a [Metrics Platform](https://medium.com/airbnb-engineering/airbnb-metric-computation-with-minerva-part-2-9afe6695b486)

- **Standardized**: Data is defined unambiguously in a single place. Anyone can look up definitions without confusion.
- **Declarative:** Users define the “what” and not the “how”. The processes by which the metrics are calculated, stored, or served are entirely abstracted away from end users.
- **Scalable**: The tool must be both computationally _and_ operationally scalable.
- **Consistent**: If definition or business logic is changed, backfills occur automatically and data remains up-to-date.
- **Highly available**: Existing datasets are replaced by new datasets with zero downtime and minimal interruption to data consumption.
- **Well tested**: Users can prototype and validate their changes extensively well before they are merged into production.

## Proxy Metrics

Proxy metrics are a stand-in for your high-level engagement metric — the metric that defines your product's overall quality. First, you seek a correlation between your high-level metric and the proxy metric. Later you work to prove causation.

One of the simplest way to define a proxy metrics is: **[Percentage of customers who do at least (the minimum threshold for user action) by (X period in time)](https://gibsonbiddle.medium.com/4-proxy-metrics-a82dd30ca810)**.

As you evaluate potential metrics, sure the proxy metric:

- Is measurable. You can find, collect, and measure the data. Ideally, you can assess the metric in an A/B test.
- Is movable. You can affect the metric through changes to the product experience.
- Is not an average. The danger of averages is you may move the metric by inspiring a small subset of customers to do a lot more of something. But this may not affect enough members to improve the overall product experience.
- Correlates to your high-level engagement metric.

## Metric Trees

A metric tree is a logical representation of a business' growth model in a graph form. It's a simplified representation of how inputs flow into outputs. The [metric tree concept is really a way of expressing a causal model of how a business works](https://sqlpatterns.com/p/debugging-your-business-with-data)!

- Metric trees are composed of:
  - Output metrics
  - Input metrics
  - Relationships amongst them. Output Metrics track the performance of key business processes while Input Metrics are the knobs and levers that allow you to manipulate the Output Metrics.
- [Start from the top metric you care about (the north star metric)](https://sqlpatterns.com/p/designing-metrics-trees).
- Gather a list of all the metrics your business measures.
- Standardize metrics before you build the metrics tree.
- Recursively break down inputs. Once you have a new metric, ask yourself, what are the components of that?
- The relationship between the metrics isn't always mathematical. Sometimes it's causal or even correlational.
