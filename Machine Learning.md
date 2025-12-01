# Machine Learning

## Production Project Checklist

1. Frame the problem. Define a clear and concise objective with clear metrics. [Write it as a design doc](https://applyingml.com/resources/ml-design-docs/). To know "what it is good enough" you have to collect and annotate more data than most people and organizations want to do.
1. Get the data. Make the data tidy. Machine learning models are only as reliable as the data used to train them. [The data matters more than the model](https://twitter.com/beeonaposy/status/1353735905962577920). Data matters more than the model. [The main bottleneck is collecting enough high quality data and getting it properly annotated and verified](https://news.ycombinator.com/item?id=45875618). Then doing proper evals with humans in the loop to get it right.
1. Explore the data. Verify any assumptions. Garbage in, garbage out. Remove ALL friction from looking at data.
1. Create a model. [Start with the simplest model!](https://developers.google.com/machine-learning/guides/rules-of-ml/). That will be the [baseline model](https://blog.insightdatascience.com/always-start-with-a-stupid-model-no-exceptions-3a22314b9aaa). Evaluate the model with the defined metric.
1. Make sure everything works end to end. _You design it, you train it, you deploy it_. [Deploy the model quickly](https://nlathia.github.io/2019/08/Machine-learning-faster.html) and automatically. Add a clear description of the model. [Monitor model performance in production](https://youtu.be/hqxQO7MoQIE).
1. Make results (models, analysis, graphs, ...) reproducible (code, environment and data). Version your code, data and configuration. Make feature dependencies explicit in the code. Separate code from configuration.
1. Test every part of the system ([ML Test Score](https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/aad9f93b86b7addfea4c419b9100c6cdd26cacea.pdf)): data (distributions, unexpected values, biases, ...).
1. Iterate. Deliver value first, then iterate. Go back to the first point and change one thing at a time. Machine Learning progress is nonlinear. It's really hard to tell in advance what's hard and what's easy.
  - [Engineering projects generally move forward, but machine learning projects can completely stall. It's possible, even common, for a week spent on modeling data to result in no improvement whatsoever](https://medium.com/@l2k/why-are-machine-learning-projects-so-hard-to-manage-8e9b9cf49641).
  - Track every experiment you do. Keep a reverse-time sorted doc where we you bullet points of what ideas you've tried and how they've gone. Look for data flywheel, harnessing the power of user's generated data to rapidly improve the whole system. These are powerful [[Feedback Loops]]. Attempt a portfolio of approaches.
1. Explain your results in terms your audience cares about. [[Data Culture|Data is only useful as long as it's being used]].

These points are expanded with more details in courses like [Made With ML](https://madewithml.com/).

## Evals

> Don't hope for "great", specify it, measure it, and improve toward it!

- Evals make fuzzy goals and abstract ideas specific and explicit. They help you systematically measure and improve a system.
- Evals are a key set of tools and methods to measure and improve the ability of an AI system to meet expectations.
- [Success with AI hinges on how fast you can iterate](https://hamel.dev/blog/posts/evals/#iterating-quickly-success). You must have processes and tools for evaluating quality (tests), debugging issues (logging, inspecting data), and changing the behavior or the system (prompt eng, fine-tuning, writing code).
- Collecting good evals will make you understand the problem better.
- Working with probabilistic systems requires new kinds of measurement and deeper consideration of trade-offs.
- Don't work if you cannot define what "great" means for your use case.
- Good eval metrics:
  - Measure an error you've observed.
  - Relates to a non-trivial issue you will iterate on.
  - Are scoped to a specific failure.
  - Has a binary outcome (not a 1–5 score).
  - Is verifiable (i.e. human labels for LLM-as-a-Judge)

### The [Eval Loop](https://openai.com/index/evals-drive-next-chapter-of-ai/)

1. **Specify**.
  - Define what "great" means.
  - Write down the purpose of your AI system in plain terms.
  - The resulting golden set of examples should be a living, authoritative reference of your most skilled experts' judgement and taste for what "great" looks like.
  - The process is iterative and messy.
2. **Measure**
  - Test against real-world conditions. Reliably surface concrete examples of how and when the system is failing.
  - Use examples drawn from real-world situations whenever possible.
3. **Improve**
  - Learn from errors.
  - Addressing problems uncovered by your eval can take on many forms: refining prompts, adjusting data access, updating the eval itself to better reflect your goals, ...
  -

### ML In Production Resources

- [Applied ML in Production](https://madewithml.com/#course)
- [Applied ML](https://github.com/eugeneyan/applied-ml)
- Microsoft [ML Model Production Checklist](https://microsoft.github.io/code-with-engineering-playbook/machine-learning/ml-model-checklist/) and [Fundamental Checklist](http://web.archive.org/web/20240903115158/https://microsoft.github.io/code-with-engineering-playbook/machine-learning/ml-fundamentals-checklist)
- [Engineering best practices for Machine Learning](https://se-ml.github.io/practices/)
- [Full Stack Deep Learning](https://course.fullstackdeeplearning.com/)
- [Awesome Production Machine Learning](https://github.com/EthicalML/awesome-production-machine-learning)
- [Awesome Machine Learning Engineer](https://github.com/radix-ai/awesome-machine-learning-engineer)
- [Machine Learning Engineer Roadmap](https://github.com/chris-chris/ml-engineer-roadmap)
- [Awesome MLOps](https://github.com/visenger/awesome-mlops).[Another awesome MLOps](https://github.com/kelvins/awesome-mlops)
- [Made With ML](https://madewithml.com/)
- [Scikit-Learn Related Projects](https://scikit-learn.org/stable/related_projects.html)
- [Getting machine learning to production](https://vickiboykis.com/2020/06/09/getting-machine-learning-to-production/)

## [Machine Learning Technical Debt](https://matthewmcateer.me/blog/machine-learning-technical-debt)

Tech debt is an analogy for the long-term buildup of costs when engineers make design choices for speed of deployment over everything else. Fixing technical debt can take a lot of work.

- Track data dependencies.
- Version the datasets.
- Make sure your data isn't all noise and no signal by making sure your model is at least capable of overfitting.
- Use [reproducibility checklists when releasing code](https://www.cs.mcgill.ca/~jpineau/ReproducibilityChecklist.pdf).

## Resources

- [The Open-Source Data Science Masters](https://github.com/datasciencemasters/go)
- [The Data Visualization Catalogue](https://datavizcatalogue.com/) and [Project](https://datavizproject.com/).
- [Visualization Curriculum](https://jjallaire.github.io/visualization-curriculum/)
- [Chart Dos and Don'ts](http://web.archive.org/web/20211026152255/https://www.eea.europa.eu/data-and-maps/dashboards/industry-energy-ghg/)
- [Machine Learning Tutorials](https://ujjwalkarn.github.io/Machine-Learning-Tutorials/)
- [Data looks better naked](https://www.darkhorseanalytics.com/blog/data-looks-better-naked)
- [Guides for Visualizing Reality](https://flowingdata.com/2020/06/01/guides-for-visualizing-reality/)
- [Model Interpretability](https://ff06-2020.fastforwardlabs.com/)
- [Diverse Counterfactuals](https://www.microsoft.com/en-us/research/blog/open-source-library-provides-explanation-for-machine-learning-through-diverse-counterfactuals/)
- [Curated ML Templates](https://params.com/)
- [Data Science Project Template](https://joserzapata.github.io/data-science-project-template/)
