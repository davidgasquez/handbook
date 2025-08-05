# Experimentation

> One test result is worth one thousand expert opinions. Wernher von Braun.

An *experiment* is an hypothesis driven exploration to uncover knowledge that can be used to improve a company or product.

When you're not certain of the right answer, the best approach is to [have a portfolio](https://seths.blog/2022/01/portfolio-thinking/), a range of bets that reward us with resilience and significant upside.

*[Insight is derived from action, not analysis](https://commoncog.com/becoming-data-driven-first-principles/)*: you only learn to improve your business when you test control factors, not when you discover them.

**A/B Test** (Including multivariate tests) are randomized controlled experiment where a single success metric is measured to determine which variant performs the best.

Normally this will consist of two groups: A **control** and **test** group, but it could also be implemented with multiple test groups (a multivariate test). The goal of an A/B test is to reach a statistically significant result, i.e. you can say that one variant is better than the other with a high level of confidence that observed difference did not occur by chance. While A/B testing is a very powerful conversion optimization instrument, it requires lots of hard work. [Most of your experiments will not produce a significant result](https://www.jitbit.com/news/185-most-of-your-ab-tests-will-fail).

Tooling built on the right principles can provide the foundation for a culture of experimentation. Experimentation platforms should be transparent and open such that anyone can create an experiment and everyone can see the historical experiments that have been run — including hypothesis, experimental design, and results. Social layers such as commenting and version control allow for peer review and peer-to-peer education. Sharing functionality to make it easy to link to experiments in emails, slack, or other communication channels reinforces experimental literacy. Workflows which abstract statistical concepts and make it easier for people to understand what experiments are reduce the perceived barrier to entry and make it easier for people to engage. [All together, these principles help cultivate and reinforce experimental literacy within your organization](https://towardsdatascience.com/the-experimentation-gap-3f5d374d354c).

## Running Experiments

We do not live in an ideal world, so we need to be very deliberate and thoughtful in how we approach experimentation design and analysis.

- Generate hypotheses based on actual observations. All experiments should have a hypothesis in plain English.
- Do not simply copy what other companies are doing (do not assume that other companies tested and validated something).
- Choose one primary metric in advance to determine "winner" while keeping a few guardrail metrics.
- [You're probably **not measuring what you thought you were measuring**](https://www.lesswrong.com/posts/9kNxhKWvixtKW5anS/you-are-not-measuring-what-you-think-you-are-measuring). But if you measure enough different stuff, you might figure out what you're actually measuring.
  - Log generously.
- Stack rank all ideas based on level of effort and potential impact -- also required sample size/run time to get results.
- Continuously validate tracking implementation.
- Think carefully when choosing your randomization unit.
- Run more A/A tests.
- The best two places to run an A/B test: In early planning(what kinds of story do people want) and when adding finishing touches(alternative versions of a scene).
- Remember, you're measuring averages.
- A great way to help people understand the importance of healthy scrutiny and [how our biases work](https://www.goodreads.com/book/show/11468377-thinking-fast-and-slow) can be to do a session where people guess the impact of an A/B test before you reveal it.

You can use [online calculators](http://experimentcalculator.com/) to estimate the length of an experiment. If your experiment is estimated to take a very long time, you can go for a different metric with a higher baseline rate or only care about bigger changes.

### Experiment Template

- Experiment summary:
  - We believe that... {describe your hypothesis in one sentence}.
  - To verify that, we will... {describe your test in one sentence}.
  - And we'll measure the impact on... {metrics}.
- Hypothesis. What are we expecting to happen? What can we monitor to detect problems with this?
- Business problem
- Supporting data
- Required tracking
- [Expected outcome](http://web.archive.org/web/20231128193004/https://about.gitlab.com/handbook/product/product-analysis/experimentation/):
  - Define the primary metric that we want the experimentation to move. This is the metric we use to define the rollout scenario.
  - Define the secondary metric(s): There are metrics that help us validate and understand in detail why and how the primary metric was impacted-
  - Define Guardrail metrics: This helps us ensure we are not harming the business in the long run for short-term gains.
- Experiment design & implementation
  - Rollout plan
  - Implementation [[checklist]] (docs are present, tested on staging, marketing coordination, ...)
- Known Assumptions

## Experimentation Mindset

[Just because the A/B test doesn't produce the results you expected doesn't mean it produced no results](https://news.ycombinator.com/item?id=5906801). Research scientists who don't prove their hypothesis don't say they learned nothing from the experiments, they just write a different paper.

Experimentation unlocks entrepreneurialism, creating a vehicle for teams down the hierarchy to show outsized impact.

[Experiment-based thinking will shape business over the coming years.](https://mikkeldengsoe.substack.com/p/why-speedboats-win-and-tankers-sink)

- Everyone can drive business impact. Almost everything is run as an experiment and the experiment is always tied to the most important metric.
- Anyone can make a change. With an experiment culture, you can take a lot of small bets, learn what works and double down on these. The best part is that these bets can come from anywhere.
- Your team feels a strong sense of ownership. They're owning their own roadmap and at the end of the quarter, they can look back and point to exactly what impact they had.

## Resources

- [GrowthBook](https://growthbook.io/). Open source A/B testing.
- [GitLab Product Experimentation](http://web.archive.org/web/20231128193004/https://about.gitlab.com/handbook/product/product-analysis/experimentation/) and [Growth Experimentation](https://about.gitlab.com/handbook/engineering/development/growth/experimentation/) handbooks.
