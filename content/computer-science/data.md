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

1. Frame the problem. Define a clear and concise objective with clear metrics.
1. Get the data. Make the data tidy. Machine learning models are only as reliable as the data used to train them. [The data matters more than the model](https://twitter.com/beeonaposy/status/1353735905962577920).
1. Explore the data. Verify any assumptions.
1. Create a model. [Start with the simplest model!](https://developers.google.com/machine-learning/guides/rules-of-ml/). That will be the [baseline model](https://blog.insightdatascience.com/always-start-with-a-stupid-model-no-exceptions-3a22314b9aaa). Evaluate the model with the defined metric.
1. Make sure everything works end to end. _You design it, you train it, you deploy it_. [Deploy the model quickly](https://nlathia.github.io/2019/08/Machine-learning-faster.html) and automatically. Add a clear description of the model. [Monitor model performance in production](https://youtu.be/hqxQO7MoQIE).
1. Make results (models, analysis, graphs, ...) reproducible (code, environment and data). Version your code, data and configuration. Make feature dependencies explicit in the code. Separate code from configuration.
1. Test every part of the system ([ML Test Score](https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/aad9f93b86b7addfea4c419b9100c6cdd26cacea.pdf)): data (distributions, unexpected values, biases, ...).
1. Iterate. Deliver value first, then iterate. Go back to the first point and change one thing at a time. Machine Learning progress is nonlinear. It's really hard to tell in advance what's hard and what's easy. [Engineering projects generally move forward, but machine learning projects can completely stall. It's possible, even common, for a week spent on modeling data to result in no improvement whatsoever](https://medium.com/@l2k/why-are-machine-learning-projects-so-hard-to-manage-8e9b9cf49641). Track every experient you do. [Keep a reverse-time sorted doc where we you bullet points of what ideas you've tried and how they've gone](https://operatorai.substack.com/p/why-do-we-write-machine-learning). Look for data flywheel, harnessing the power of user's generated data to rapidly improve the whole system. These are powerful feedback loops. Attempt a portfolio of approaches.
1. Explain your results in terms your audience cares about. Data is only useful as long as it's being used.

#### Resources

- [Applied ML in Production](https://madewithml.com/courses/applied-ml-in-production/).
- [Engineering best practices for Machine Learning](https://se-ml.github.io/practices/).
- [Full Stack Deep Learning](https://course.fullstackdeeplearning.com/).
- [Awesome Production Machine Learning](https://github.com/EthicalML/awesome-production-machine-learning).
- [Awesome Machine Learning Engineer](https://github.com/radix-ai/awesome-machine-learning-engineer).
- [Machine Learning Engineer Roadmap](https://github.com/chris-chris/ml-engineer-roadmap).
- [Awesome MLOps](https://github.com/visenger/awesome-mlops).[Another awesome MLOps](https://github.com/kelvins/awesome-mlops).

### [Machine Learning Technical Debt](https://matthewmcateer.me/blog/machine-learning-technical-debt)

Tech debt is an analogy for the long-term buildup of costs when engineers make design choices for speed of deployment over everything else. Fixing technical debt can take a lot of work.

- Tack data dependencies.
- Version the datasets.
- Make sure your data isn't all noise and no signal by making sure your model is at least capable of overfitting.
- Use [reproducibility checklists when releasing code](https://www.cs.mcgill.ca/~jpineau/ReproducibilityChecklist.pdf).

## Data Analysis Requests

[Real impact comes from continuous decision-making and implementing actions with feedback](https://news.ycombinator.com/item?id=22808006). Reports are rarely read, and often forgotten. Decision-making involves getting data, summarizing and predicting ad then taking action.

Continuous decision-making — the kind that leads to impact — involves doing this repeatedly in a principled fashion, which means creating a system around the decision process. That said, [your impact is tough to measure — data doesn't always translate to value](https://dfrieds.com/articles/data-science-reality-vs-expectations.html).

[The analytics engineer workload is a lot like being a data librarian](https://www.youtube.com/watch?v=T0Z_ibd3Hx0). If you are running a library you have these books coming in and you have people who are looking for books on specific topics and you've got to figure out a way to organize all those books so that all those people can find what they need. There are many different ways to organize books, not just one perfect solution. A librarian is interested in helping people find the books that they're looking for but also discovering new books that they didn't realize that they were looking for.

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

## Great Blog Posts about Data Engineering

- [The AI Hierarchy of Needs](https://hackernoon.com/the-ai-hierarchy-of-needs-18f111fcc007).
- [Why is data hard?](https://medium.com/@HelenLeeKupp/why-is-data-hard-3ed96ec70f3f).
- [Building a Data Pipeline from Scratch](https://medium.com/the-data-experience/building-a-data-pipeline-from-scratch-32b712cfb1db).
- [A Beginner’s Guide to Data Engineering Part I](https://medium.com/@rchang/a-beginners-guide-to-data-engineering-part-i-4227c5c457d7) and [Part II](https://medium.com/@rchang/a-beginners-guide-to-data-engineering-part-ii-47c4e7cbda71).
- [The Rise of the Data Engineer](https://www.freecodecamp.org/news/the-rise-of-the-data-engineer-91be18f1e603/).
- [The Downfall of the Data Engineer](https://medium.com/@maximebeauchemin/the-downfall-of-the-data-engineer-5bfb701e5d6b).
- [Functional Data Engineering — a modern paradigm for batch data processing](https://medium.com/@maximebeauchemin/functional-data-engineering-a-modern-paradigm-for-batch-data-processing-2327ec32c42a).
- [So You Want to be a Data Engineer?](https://angelddaz.substack.com/p/so-you-want-to-be-a-data-engineer).
