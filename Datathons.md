# Datathons

## Discover

- [ML Contests](https://mlcontests.com/)
- [Humyn](https://app.humyn.ai/challenges)

## Checklist

1. Learn more about the problem. Search for similar Kaggle competitions. Check the task in [Papers with Code](https://paperswithcode.com/).
2. Do a basic data exploration. Try to understand the problem and gather a sense of what can be important.
3. Get baseline model working.
4. Design an evaluation method as close as the final evaluation. Plot local evaluation metrics against the public ones (correlation) to validate how well your validation strategy works.
5. Try different approaches for preprocessing (encodings, Deep Feature Synthesis, lags, aggregations, imputers, ...). If you're working as a group, split preprocessing feature generation between files.
6. Plot learning curves ([sklearn](https://scikit-learn.org/stable/modules/learning_curve.html) or [external tools](https://github.com/reiinakano/scikit-plot)) to avoid overfitting.
7. Plot real and predicted target distribution to see how well your model understand the underlying distribution. Apply any postprocessing that might fix small things.
8. Tune hyper-parameters once you've settled on an specific approach ([hyperopt](target distribution), [optuna](https://optuna.readthedocs.io/)).
9. Plot and visualize the predictions (histograms, random prediction, ...) to make sure they're doing as expected. Explain the predictions with [SHAP](https://github.com/slundberg/shap).
10. Think about what postprocessing heuristics can be done to improve or correct predictions.
11. [Stack](https://scikit-learn.org/stable/auto_examples/ensemble/plot_stack_predictors.html) classifiers ([example](https://www.kaggle.com/couyang/featuretools-sklearn-pipeline#ML-Pipeline)).
12. Try AutoML models. For tabular data: [TPOT](https://github.com/EpistasisLab/tpot), [AutoSklearn](https://github.com/automl/auto-sklearn), [AutoGluon](https://auto.gluon.ai/stable/index.html), Google AI Platform, [PyCaret](https://github.com/pycaret/pycaret), [Fast.ai](https://docs.fast.ai/), [Alex](https://github.com/Alex-Lekov/AutoML_Alex).For time series: [AtsPy](https://github.com/firmai/atspy), [DeepAR](https://docs.aws.amazon.com/forecast/latest/dg/aws-forecast-recipe-deeparplus.html), [Nixtla's NBEATS](https://nixtlaverse.nixtla.io/neuralforecast/models.nbeats.html).

## Preprocessing Resources

- [Feature Engineering Ideas](https://github.com/aikho/awesome-feature-engineering)
- [Deep Feature Synthesis](https://featuretools.alteryx.com/en/stable/getting_started/afe.html). [Simple tutorial](https://www.kaggle.com/willkoehrsen/automated-feature-engineering-basics).

## Exploratory Data Analysis Resources

- [HiPlot](https://facebookresearch.github.io/hiplot/)

### Scikit Learn Compatible Transformers

- [LEGO](https://github.com/koaning/scikit-lego)
- [Skrub](https://github.com/skrub-data/skrub)
- [Skoot](https://github.com/tgsmith61591/skoot)
- [Sktools](https://github.com/david26694/sktools)
- [Scikit-Learn Related Projects](https://scikit-learn.org/stable/related_projects.html).

### Other Compatible Tools

- [Contributions repository](https://github.com/scikit-learn-contrib)
- [Awesome Scikit-Learn](https://github.com/fkromer/awesome-scikit-learn)

## Time Series Resources

- [Quick Tutorials](https://www.kaggle.com/c/jane-street-market-prediction/discussion/198951)
- [Tsfresh](https://tsfresh.readthedocs.io/en/latest/)
- [Fold](https://github.com/dream-faster/fold)
- [Neural Prophet](https://neuralprophet.com/) or [TimesFM](https://github.com/google-research/timesfm)
- [Darts](https://github.com/unit8co/darts)
- [Functime](https://docs.functime.ai/forecasting/)
- [Pytimetk](https://github.com/business-science/pytimetk)
- [Sktime](https://github.com/alan-turing-institute/sktime) / [Aeon](https://github.com/aeon-toolkit/aeon)
- [Awesome Collection](https://github.com/MaxBenChrist/awesome_time_series_in_python)
- [Video with great ideas](https://www.youtube.com/watch?v=9QtL7m3YS9I)
- [Tutorial Kaggle Notebook](https://www.kaggle.com/code/tumpanjawat/s3e19-course-eda-fe-lightgbm)
- Think about adding external datasets like [related Google Trends search](https://trends.google.com/trends/), PiPy Packages downloads, [Statista](https://www.statista.com/), weather, ...

## Datathon Platforms

- [Kaggle](https://www.kaggle.com/competitions)
- [MLContest](https://mlcontests.com/)
- [Humyn](https://app.humyn.ai/)
- [DrivenData](https://www.drivendata.org/competitions/)
- [Xeek](https://xeek.ai/challenges)
