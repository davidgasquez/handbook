# Datathons

## Checklist

1. Learn more about the problem. Search for similar Kaggle competitions. Check the task in [Papers with Code](https://paperswithcode.com/).
2. Do a basic data exploration. Try to understand the problem and gather a sense of what can be important.
3. Get baseline model working.
4. Design an evaluation method as close as the final evaluation. Plot local evaluation metrics against the public ones (correlation) to validate how well your validation strategy works.
5. Try different approaches for preprocessing (encodings, Deep Feature Synthesis, lags, aggregations, imputers, ...). If you're working as a group, split preprocessing feature generation between files.
6. Plot learning curves ([sklearn](https://scikit-learn.org/stable/modules/learning_curve.html) or [external tools](https://github.com/reiinakano/scikit-plot)) to avoid overfitting.
7. Plot real and predicted target distribution to see how well your model understand the underlying distribution. Apply any postprocessing that might fix small things.
8. Tune hyper-parameters once you've settled on an specific approach ([hyperopt](target distribution), [optuna](https://optuna.readthedocs.io/)).
9. Plot and visualize the predictions (target vs predicted errors, histograms, random prediction, ...) to make sure they're doing as expected. Explain the predictions with [SHAP](https://github.com/slundberg/shap).
10. Think about what postprocessing heuristics can be done to improve or correct predictions.
11. [Stack](https://scikit-learn.org/stable/auto_examples/ensemble/plot_stack_predictors.html) classifiers ([example](https://www.kaggle.com/couyang/featuretools-sklearn-pipeline#ML-Pipeline)).
12. Try AutoML models.
  - Tabular: [AutoGluon](https://auto.gluon.ai/), [AutoSklearn](https://github.com/automl/auto-sklearn), Google AI Platform, [PyCaret](https://github.com/pycaret/pycaret), [Fast.ai](https://docs.fast.ai/).
  - Time Series: [AtsPy](https://github.com/firmai/atspy), [DeepAR](https://docs.aws.amazon.com/forecast/latest/dg/aws-forecast-recipe-deeparplus.html), [Nixtla's NBEATS](https://nixtlaverse.nixtla.io/neuralforecast/models.nbeats.html), [AutoTS](https://github.com/winedarksea/AutoTS).

## Preprocessing Resources

- [Feature Engineering Library](https://feature-engine.trainindata.com/).
- [Feature Engineering Ideas](https://github.com/aikho/awesome-feature-engineering).
- [Deep Feature Synthesis](https://featuretools.alteryx.com/en/stable/getting_started/afe.html). [Simple tutorial](https://www.kaggle.com/willkoehrsen/automated-feature-engineering-basics).
- [Modern Feature Engineering Ideas](https://www.kaggle.com/c/playground-series-s4e12/discussion/554328) ([code](https://www.kaggle.com/code/cdeotte/first-place-single-model-cv-1-016-lb-1-016)).
  - [Target Encoding](https://www.kaggle.com/competitions/playground-series-s4e12/discussion/554328) (with cross-validation to avoid leakage).
  - Forward Feature Selection.
- [Hillclimbing](https://www.kaggle.com/competitions/playground-series-s3e14/discussion/410639).

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
- [Functime](https://docs.functime.ai/)
- [Pytimetk](https://github.com/business-science/pytimetk)
- [Sktime](https://github.com/alan-turing-institute/sktime) / [Aeon](https://github.com/aeon-toolkit/aeon)
- [Awesome Collection](https://github.com/MaxBenChrist/awesome_time_series_in_python)
- [Video with great ideas](https://www.youtube.com/watch?v=9QtL7m3YS9I)
- [Tutorial Kaggle Notebook](https://www.kaggle.com/code/tumpanjawat/s3e19-course-eda-fe-lightgbm)
- Think about adding external datasets like [related Google Trends search](https://trends.google.com/trends/), PiPy Packages downloads, [Statista](https://www.statista.com/), weather, ...
- [TabPFN for time series](https://github.com/liam-sbhoo/tabpfn-time-series)

## Datathon Platforms

- [Kaggle](https://www.kaggle.com/competitions)
- [MLContest](https://mlcontests.com/). They also share a "State of Competitive Machine Learning" report every year ([2023](https://mlcontests.com/state-of-competitive-machine-learning-2023)) and summaries on the state of the art for ["Tabular Data"](https://mlcontests.com/tabular-data/).
- [Humyn](https://app.humyn.ai/)
- [DrivenData](https://www.drivendata.org/competitions/)
- [Xeek](https://xeek.ai/challenges)
- [Cryptopond](https://cryptopond.xyz/)
