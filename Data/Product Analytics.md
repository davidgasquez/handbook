# Product Analytics

Product analytics can be defined as the way companies analyze what their users are doing in their product.

- [[Organizations]] want **visibility** into how their users use their products to make educated decisions on what they should be **improving and building**.
- SQL is not the ideal tool for analyzing event data. Explorations into why users are doing a particular action requires **diving into the granular events themselves**.
- [Start small (ant iterate), stay small (limit metrics and dashboards), and keep it simple (you can explain the metric in plain language)](https://twitter.com/0xferruccio/status/1501983388399325191).
- [Product analytics should be part of the product life-cycle the same way writing unit tests is](https://youtu.be/qK6vAJKh6fo). That is, without a middleman and having data involved from the start.
- Measure tracking quality and treat all tracking bugs as production incidents.
- Data trust issues come when data producers and data consumers doesn't work together. Aim to shorten the data loop. E.g: [The feedback loop for the performance engineer is much faster and reliable (same person tracks and analyzes) than for the standard engineer that doesn't look at the data to see the impact they made with their changes](https://www.heavybit.com/library/podcasts/the-right-track/ep-8-defining-the-data-scientist-with-josh-wills-of-weavegrid/).
- [Product Analytics is hard because when you instrument the events you don’t know what you want to analyze. When you analyze them you often didn’t capture what you want to measure](https://twitter.com/pedram_navid/status/1511362347490631782). Also, Ad-Blockers.
- Even tracking is seen as an after-the-fact activity instead of something integrated into day-to-day design and development.
	- No one gets promoted for doing a good tracking work. People get promoted for delivering features.
- [Some of hard things](https://twitter.com/_MRogers/status/1511426752735760392): building a common nomenclature, knowing what exists, what's reusable/equivalent in new features, testing, aligning across different platforms...
- Don't treat all events the same. Missing some data in key events is not great. [Keep in mind that many events are ephemeral](https://twitter.com/johncutlefish/status/1511596224964534278).
- [If a stakeholder wants to know if users behave a certain way you can apply this heuristic](https://twitter.com/teej_m/status/1456719714420289536): assume they do - what decision would we make? What's the risk of just making that decision now? Risk is low? Just make it. Risk is uncertain? Let's [[Experimentation | run an experiment]].
- It doesn't make sense to release something if you can't tell how is performing!
