# Datathons

## Checklist

1. Learn more about the problem. Search for similar Kaggle competitions. Check the task in [Papers with Code](https://paperswithcode.com/).
2. Do a basic data exploration. Try to understand the problem and gather a sense of what can be important.
3. Get baseline model working.
4. Create `scikit-learn` compatible metric if needed.
5. Try different approaches for preprocessing (encodings, Deep Feature Synthesis, lags, aggregations, imputers, ...)
	 - If yopu're working as a group, split preprocessing feature generation between files.
6. Plot learning curves ([sklearn](https://scikit-learn.org/stable/modules/learning_curve.html) or [external tools](https://github.com/reiinakano/scikit-plot)) to avoid overfitting.
7. Tune hyper-parameters once you've settled on an specific approach. ([optuna](https://optuna.readthedocs.io/)).
8. Plot and visualize the predictions (histograms, random prediction, ...) to make sure they're doing as expected.
9. Think about what postprocessing heuristics can be done to improve or correct predictions.
10. [Stack](https://scikit-learn.org/stable/auto_examples/ensemble/plot_stack_predictors.html) classifiers ([example](https://www.kaggle.com/couyang/featuretools-sklearn-pipeline#ML-Pipeline)).
11. Try AutoML models:
	- For tabular data: [TPOT](https://github.com/EpistasisLab/tpot), [AutoSklearn](https://github.com/automl/auto-sklearn), [AutoGluon](https://auto.gluon.ai/stable/index.html), Google AI Platform, [PyCaret](https://github.com/pycaret/pycaret), [Fast.ai](https://docs.fast.ai/), [Alex](https://github.com/Alex-Lekov/AutoML_Alex).
	- For time series: [AtsPy](https://github.com/firmai/atspy), [DeepAR](https://docs.aws.amazon.com/forecast/latest/dg/aws-forecast-recipe-deeparplus.html).

## Preprocessing Resources

- [Feature Engineering Ideas](https://github.com/aikho/awesome-feature-engineering)
- [Deep Feature Synthesis](https://featuretools.alteryx.com/en/stable/getting_started/afe.html). [Simple tutorial](https://www.kaggle.com/willkoehrsen/automated-feature-engineering-basics).

### Scikit Learn Compatible Transformers

  - [LEGO](https://github.com/koaning/scikit-lego)
  - [Skoot](https://github.com/tgsmith61591/skoot)
  - [Sktools](https://github.com/david26694/sktools)
  - [Scikit-Learn Related Projects](https://scikit-learn.org/stable/related_projects.html).

#### Other Compatible Tools

  - [Contributions repository](https://github.com/scikit-learn-contrib)
  - [Awesome Scikit-Learn](https://github.com/fkromer/awesome-scikit-learn)

## Time Series Resources

- [Quick Tutorials](https://www.kaggle.com/c/jane-street-market-prediction/discussion/198951)
- [Tsfresh](https://tsfresh.readthedocs.io/en/latest/)
- [Prophet](https://facebook.github.io/prophet/docs/quick_start.html)
- [Darts](https://github.com/unit8co/darts)
- [Sktime](https://github.com/alan-turing-institute/sktime)
- [Awesome Collection](https://github.com/MaxBenChrist/awesome_time_series_in_python)
- [Video with great ideas](https://www.youtube.com/watch?v=9QtL7m3YS9I)
