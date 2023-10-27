# Machine Learning

## Production Project Checklist

1. Frame the problem. Define a clear and concise objective with clear metrics. [Write it as a design doc](https://applyingml.com/resources/ml-design-docs/d).
1. Get the data. Make the data tidy. Machine learning models are only as reliable as the data used to train them. [The data matters more than the model](https://twitter.com/beeonaposy/status/1353735905962577920). Data matters more than the model.
1. Explore the data. Verify any assumptions. Garbage in, garbage out.
1. Create a model. [Start with the simplest model!](https://developers.google.com/machine-learning/guides/rules-of-ml/). That will be the [baseline model](https://blog.insightdatascience.com/always-start-with-a-stupid-model-no-exceptions-3a22314b9aaa). Evaluate the model with the defined metric.
1. Make sure everything works end to end. _You design it, you train it, you deploy it_. [Deploy the model quickly](https://nlathia.github.io/2019/08/Machine-learning-faster.html) and automatically. Add a clear description of the model. [Monitor model performance in production](https://youtu.be/hqxQO7MoQIE).
1. Make results (models, analysis, graphs, ...) reproducible (code, environment and data). Version your code, data and configuration. Make feature dependencies explicit in the code. Separate code from configuration.
1. Test every part of the system ([ML Test Score](https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/aad9f93b86b7addfea4c419b9100c6cdd26cacea.pdf)): data (distributions, unexpected values, biases, ...).
1. Iterate. Deliver value first, then iterate. Go back to the first point and change one thing at a time. Machine Learning progress is nonlinear. It's really hard to tell in advance what's hard and what's easy. [Engineering projects generally move forward, but machine learning projects can completely stall. It's possible, even common, for a week spent on modeling data to result in no improvement whatsoever](https://medium.com/@l2k/why-are-machine-learning-projects-so-hard-to-manage-8e9b9cf49641). Track every experiment you do. [Keep a reverse-time sorted doc where we you bullet points of what ideas you've tried and how they've gone](https://operatorai.substack.com/p/why-do-we-write-machine-learning). Look for data flywheel, harnessing the power of user's generated data to rapidly improve the whole system. These are powerful [[Feedback Loops]]. Attempt a portfolio of approaches.
1. Explain your results in terms your audience cares about. [[Data Culture|Data is only useful as long as it's being used]].

These points are expanded with more details in courses like [Made With ML](https://madewithml.com/).

## Tips

- Use pre-commit hooks. Start with the basics — black, isort — then add pydocstyle, mypy, check-ast, ...
- Version your data! Don’t overwrite raw datasets.

### Resources

- [Applied ML in Production](https://madewithml.com/courses/applied-ml-in-production/)
- [Applied ML](https://github.com/eugeneyan/applied-ml)
- Microsoft [ML Model Production Checklist](https://microsoft.github.io/code-with-engineering-playbook/machine-learning/ml-model-checklist/) and [Fundamental Checklist](https://microsoft.github.io/code-with-engineering-playbook/machine-learning/ml-fundamentals-checklist/)
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
- [The Data Visualization Catalogue](https://datavizcatalogue.com/)
- [Visualization Curriculim](https://jjallaire.github.io/visualization-curriculum/)
- [Chart Dos and Don'ts](https://www.eea.europa.eu/data-and-maps/daviz/learn-more/chart-dos-and-donts)
- [Machine Learning Tutorials](https://ujjwalkarn.github.io/Machine-Learning-Tutorials/)
- [Data looks better naked](https://www.darkhorseanalytics.com/blog/data-looks-better-naked)
- [Guides for Visualizing Reality](https://flowingdata.com/2020/06/01/guides-for-visualizing-reality/)
- [Model Interpretability](https://ff06-2020.fastforwardlabs.com/)
- [Diverse Counterfactuals](https://www.microsoft.com/en-us/research/blog/open-source-library-provides-explanation-for-machine-learning-through-diverse-counterfactuals/)
