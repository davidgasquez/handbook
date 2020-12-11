# Data

## Data Engineering

Data Pipelines are a set of actions that extract data, transform it, and then load the final data somewhere. As any [distributed system](https://www.somethingsimilar.com/2013/01/14/notes-on-distributed-systems-for-young-bloods/), they're tricky to work with. These are some great principles to keep in mind as [production data engineering is mostly computer science](https://towardsdatascience.com/lessons-from-a-year-in-the-data-science-trenches-f06efa6355fd).

### Basic Principles

- Simplicity: Each steps is easy to understand and modify.
- Reliability: Errors in the pipelines can be recovered. Pipelines are monitored and tested. Data is saved in each step (storage is cheap) so it can be used later if needed. For example, adding a new column to a table can be done extracting the column from the intermediary data without having to query the data source.
- Modularity: Steps are independent.
- Consistency: Same conventions and design patterns across pipelines.
- Efficiency: Low event latency when needed. Easy to scale up and down.
- Flexibility: Steps change to conform data points. Changes don't stop the pipeline or losses data.

### Data Flow

- In each step of the pipeline there are producers of data and consumers. Consumers can be also producers, e.g `B` in `A | B | C`.
  - Decouple producers and consumers adding a layer in between. That can be something as simple as a text file or complex as a database.
- Schemas changes. Most of the time you won't be there at the exact time of the change so try to save everything.
  - Ideally, the schema will evolve in a backward compatible way:
    - Data types don't change in the same column
    - Columns are either deleted or added but never renamed
- Create a few extra columns like `processed_at` or `schema_version`
- Data coming from pipelines should be easily reproducible. If you want to re-run a process, you should ensure that it will produce always the same result. This can be achieved by enforcing the [Functional Data Engineering Paradigm](https://medium.com/@maximebeauchemin/functional-data-engineering-a-modern-paradigm-for-batch-data-processing-2327ec32c42a).

## Machine Learning

### [Production Project Checklist](https://github.com/eugeneyan/applied-ml)

1. Frame the problem.
  1. Define a clear and concise objective.
  2. Define metrics.
  3. Explain and verify any assumptions.
2. Get the data.
3. Explore the data.
4. Make the data tidy.
5. Create a model.
  1. [Start with the simplest model!](https://developers.google.com/machine-learning/guides/rules-of-ml/). That will be your [baseline model](https://blog.insightdatascience.com/always-start-with-a-stupid-model-no-exceptions-3a22314b9aaa).
  2. Evaluate the model with the defined metric.
6. Make sure everything works end to end. You design it, you train it, you deploy it.
  1. [Deploy the model quickly](https://nlathia.github.io/2019/08/Machine-learning-faster.html) and automatically.
  2. Add a clear description of the model.
  3. Monitor models in production. [Monitor model output](https://youtu.be/hqxQO7MoQIE).
7. Make results (models, analysis, graphs, ...) reproducible (code, environment and data).
  1. You need to version your code, data and configuration.
  2. Make your feature dependencies explicit in your code.
  3. Separate code from configuration.
8. Test every part of the system ([ML Test Score](https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/aad9f93b86b7addfea4c419b9100c6cdd26cacea.pdf)):
  1. data (distributions, unexpected values, biases, ...).
9. Iterate.
  1. Go back to the first point and change one thing at a time. Machine Learning progress is nonlinear. It's really hard to tell in advance what's hard and what's easy. [Engineering projects generally move forward, but machine learning projects can completely stall. It's possible, even common, for a week spent on modeling data to result in no improvement whatsoever](https://medium.com/@l2k/why-are-machine-learning-projects-so-hard-to-manage-8e9b9cf49641).
  2. Track every experient you do. [Keep a reverse-time sorted doc where we you bullet points of what ideas you've tried and how they've gone](https://operatorai.substack.com/p/why-do-we-write-machine-learning).
  3. Look for data flywheel. That means harnessing the power of users to rapidly improve the whole system. These are powerful feedback loops.
  4. Attempt a portfolio of approaches
10. Explain your results in terms your audience cares about.

#### Resources

- [Applied ML in Production](https://madewithml.com/courses/applied-ml-in-production/).
- [Engineering best practices for Machine Learning](https://se-ml.github.io/practices/).
- [Full Stack Deep Learning](https://course.fullstackdeeplearning.com/).

### [Machine Learning Technical Debt](https://matthewmcateer.me/blog/machine-learning-technical-debt)

Tech debt is an analogy for the long-term buildup of costs when engineers make design choices for speed of deployment over everything else. Fixing technical debt can take a lot of work.

- Tack data dependencies.
- Version the datasets.
- Make sure your data isn't all noise and no signal by making sure your model is at least capable of overfitting.
- Use [reproducibility checklists when releasing code](https://www.cs.mcgill.ca/~jpineau/ReproducibilityChecklist.pdf).

## Data Analysis Requests

[Real impact comes from continuous decision-making and implementing actions with feedback](https://news.ycombinator.com/item?id=22808006). Reports are rarely read, and often forgotten. Decision-making involves getting data, summarizing and predicting ad then taking action.

Continuous decision-making — the kind that leads to impact — involves doing this repeatedly in a principled fashion, which means creating a system around the decision process. That said, [your impact is tough to measure — data doesn't always translate to value](https://dfrieds.com/articles/data-science-reality-vs-expectations.html).

### Request Checklist

1. What's the goal of the analysis? Are there related actionable actions? Which kind of decisions is it going to enable? How will this deliver business value within 90 days?
1. Where is the data?
1. Which is more important? Getting the answer quickly or getting an accurate answer?
1. Is the data in the correct format and is it accurate?
1. Make the analysis reproducible.
1. Before delivering, summarize.

## Resources

- [The Open-Source Data Science Masters](https://github.com/datasciencemasters/go).
- [The Data Visualization Catalogue](https://datavizcatalogue.com/).
- [Machine Learning Tutorials](https://ujjwalkarn.github.io/Machine-Learning-Tutorials/).
- [Data looks better naked](https://www.darkhorseanalytics.com/blog/data-looks-better-naked).
- [The Data Visualization Catalogue](https://datavizcatalogue.com/search.html).
- [Guides for Visualizing Reality](https://flowingdata.com/2020/06/01/guides-for-visualizing-reality/).
- [Model Interpretability](https://ff06-2020.fastforwardlabs.com/).
  - [Diverse Counterfactuals](https://www.microsoft.com/en-us/research/blog/open-source-library-provides-explanation-for-machine-learning-through-diverse-counterfactuals/).
