# Pairwise Comparisons

Pairwise comparisons are any processes of comparing entities in pairs to judge which of each entity is preferred, or has a greater amount of some quantitative property, or whether or not the two entities are identical. They are useful when aggregating human preferences.

## Why Pairwise

- Humans are better at relative judgments than absolute scoring. Scale-free comparisons reduce calibration headaches ([better judging systems](https://anishathalye.com/designing-a-better-judging-system/)).
- Simple binary choices reduce cognitive load and make participation easier than intensity sliders.
- Works across domains (psychometrics, recsys, sports, RLHF) where latent utility is hard to measure directly ([pairwise calibrated rewards](https://www.itai-shapira.com/pdfs/pairwise_calibrated_rewards_for_pluralistic_alignment.pdf)).
- Disagreement is signal. Diversity in raters surfaces semantics a single expert might miss ([CrowdTruth](https://github.com/CrowdTruth/CrowdTruth-core/blob/master/tutorial/Part%20I_%20CrowdTruth%20Tutorial.pdf)).

## Collecting Good Data

- Keep the UX fast and low-friction. Suggest options, keep context in the UI, and let people expand only if they want.
- Avoid intensity questions. They are order-dependent and [require global knowledge](https://xkcd.com/883/).
- Use [active sampling](https://projecteuclid.org/journals/annals-of-statistics/volume-47/issue-6/Active-ranking-from-pairwise-comparisons-and-when-parametric-assumptions-do/10.1214/18-AOS1772.pdf)/dueling bandits to focus on informative pairs. Stop when marginal value drops.
- [Top-k tasks](https://proceedings.mlr.press/v84/heckel18a.html) can scale collection (pick best 3 of 6) while still convertible to pairwise data.
- Expect [noisy raters](https://arxiv.org/abs/1612.04413). Filter or reweight after the fact using heuristics or gold questions instead of overfitting to ["experts" biases](https://link.springer.com/article/10.1007/s10618-024-01024-z).

## Aggregation and Evaluation

- There are many aggregation/eval rules; [Bradley-Terry](https://en.wikipedia.org/wiki/Bradley%E2%80%93Terry_model), [Huber in log-space](https://en.wikipedia.org/wiki/Huber_loss), [Brier](https://en.wikipedia.org/wiki/Brier_score), ...
- Converting pairs into scores or rankings is standard; start with Elo/Bradley-Terry (or crowd-aware variants) before custom models.
- Use robust methods (crowd BT, hierarchical BT, [Bayesian variants](https://erichorvitz.com/crowd_pairwise.pdf)) to correct annotator bias and uncertainty.
- Expert jurors can be inconsistent, biased, and expensive. [Large graphs of comparisons](https://arxiv.org/pdf/1505.01462) are needed to tame variance.
- You can report accuracy/Brier by using [bootstrap](https://en.wikipedia.org/wiki/Bootstrapping_(statistics)).

## Resources

- [Elo vs Bradley-Terry Model](https://www.keiruaprod.fr/blog/2021/06/02/elo-vs-bradley-terry-model.html)
- [Designing a Better Judging System](https://anishathalye.com/designing-a-better-judging-system/)
- [Quadratic vs Pairwise](https://blog.zaratan.world/p/quadratic-v-pairwise)
- [An Analysis of Pairwise Preference](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3359677)
