# Concepts

## Fallacies

A logical fallacy is a flaw in reasoning. Logical fallacies are like tricks or illusions of thought, and they're often sneakily used by politicians and the media to fool people. They are [tools](https://yourlogicalfallacyis.com/) designed to help us identify and call out dodgy logic wherever it may raise its ugly, incoherent head.

## Mental Models

A mental model is a thought process about how something works in the real world. They can help to shape behavior and set an approach to solving problems (a personal algorithm). The world is confusing when your model of the world is wrong. Millions of mental models exists, and every discipline has their own set. Some of them overlap and might be called differently.

- [Mental Models: The Best Way to Make Intelligent Decisions](https://www.farnamstreetblog.com/mental-models/)
- [A Searching and Fearless Intellectual Inventory](https://www.facebook.com/notes/kent-beck/a-searching-and-fearless-intellectual-inventory/1179765038723025)
- [Mental Models I Find Repeatedly Useful](https://medium.com/@yegg/mental-models-i-find-repeatedly-useful-936f1cc405d#.vvrgpsu13)
- [Useful Models](http://www.defmacro.org/2016/12/22/models.html)
- [The Big Mental Models](https://jamesclear.com/mental-models)
- [Julian Spahiro's Mental Models](https://www.julian.com/blog/mental-model-examples)
- [Mental models for designers](https://dropbox.design/article/mental-models-for-designers)
- [Mental Models Box](https://www.mentalmodelsbox.com/explore)

## Conceptual Compression

From time to time, look for abstractions that can compress the information behind them. This way you can reduce mental space. When needed, you can expand the abstraction and go deeper. This is used a lot in programming, where a new tool or package emerges taking care of that was previously done by human minds (OMRs vs hand written SQL)!

Conceptual compression also allows lazy learning. If you're using the compressed version you don't need to care about what's behind. If you need, you can learn it at that time. Not everything needs to be learned upfront.

## Processes

Whether you're compiling code or making breakfast, everything can be modeled as a repeatable process. Understanding the elements of production — inputs, outputs, timing, limiting steps, quality controls, variability — lets us create and improve the _machinery_ needed to fulfill our goals. We all aim to achieve the same thing: high quality results in less time with least waste.

> If you can't describe what you are doing as a process, you don't know what you're doing. — W. Edwards Deming

Write down processes, take measures and then iterate. Speed of iteration beats the quality of iteration. You cannot improve what you cannot measure. You cannot improve what you cannot explain.

[There are three kinds of processes](https://fs.blog/tobi-lutke). There's a kind of process that makes things that were previously impossible to do, possible. Then there's a kind of process that makes something that was previously possible significantly simpler. And then there's everything else. E.g: telling people to behave slightly different from what common sense tells them to do without making any impact.

You can [optimize processes](https://youtu.be/lhbLNBqhQkc) through [experiments](https://rs.io/how-to-get-started-with-anything/), removing barriers, adding incentives, or using technology.

When designing a process, look for these properties:

- Algorithmic. So you don't need to think about choices. This reduces mental overhead and anxiety (The Paradox of Choice).
  - A way to reduce choices is self binding (like Ulyses did). Limiting our actions in the future will reduce the choices we'll need to do.
- Flexible. Make if fluid enough to keep up with changes. [Loopholes will be abused](https://www.youtube.com/watch?v=dDYFiq1l5Dg) if the process can't change quickly enough to fix itself.
- Low Friction. Simple processes are easier to understand and apply.
- Short Feedback Loop. Show the results as soon as you can.

A process takes an input to produce an output. A group of processes can be view as a System.

## Systems

A system is anything with multiple parts that depend on each other. In other words, every machine and activity is a system on some level. Systems achieve goals.

When designing systems, look for these properties:

- Modular.
  - Loosely coupling. Breaking a chair shouldn't break the dinner!
  - Having multiple parts also allows systems to develop emergent properties. When things interact, they often birth new, unpredictable forms. The sum total of a system is more than its competent parts. E.g: biological evolution, Conway's Game of Life, Wikipedia, Minecraft. [You can't top-down plan emergent systems, but you can provoke them into being. Here are some attributes that emergent systems often have](http://gordonbrander.com/pattern/provoking-emergence/):
    - Evolution: Mutation, Heredity and Selection. Evolutionary systems often generate unexpected solutions. Nature selects for good enough.
    - More than one goal that can be achieved in more than one way.
    - Alphabet: An alphabet is a kit of parts, together with rules for combining them (e.g Lego).
    - An easy initial learning curve but infinite potential (e.g. Minecraft).
    - Involves multiple agents. It has [network effects](https://www.meltingasphalt.com/interactive/going-critical/).
- Responsiveness. Know what the system is doing and make the feedback loop fast.
- Some systems might benefit of being distributed.
- Focus on incentives. [Don't be angry at the people who are benefiting from a system, or at the system itself](https://news.ycombinator.com/item?id=22043088). Most just end up that way, the same way a river meanders towards the sea, or an electrical current tries to find ground.

To [change a system](https://intenseminimalism.com/2015/a-framework-for-thinking-about-systems-change/) you need vision, skills, incentives, resources and an action plan. Changing a [complex system](https://complexityexplained.github.io/) is hard and [even if the intention is good, the result might not](https://fs.blog/2013/10/iatrogenics/).

Intervening in a system requires some kind of theory, some kind of model where the positive effects will definitely be better than the side effects - and given how little people know and how bad we are at prediction, this will probably be wrong. But removing things is kind of like a negative intervention, and so probably good (you're unlikely to find a medicine as helpful as smoking is harmful, so focus on stopping smoking).

[A complex system that works is invariably found to have evolved from a simple system that worked](https://en.wikipedia.org/wiki/John_Gall_(author)#Gall's_law). Complex systems usually have [attractor landscapes](https://ncase.me/attractors/) that can be used to change it. [The world is richer and more complicated than we give it credit for](https://slatestarcodex.com/2017/03/16/book-review-seeing-like-a-state/).

A good approach to incrementally chance a system (similar to natural selection) is to:

  1. Start by identifying the highest-leverage level to optimize at: Ask whether you're optimizing the machine or a cog within it. Complex systems might change in unexpected ways (butterfly effects). Minor differences in starting points make big differences on future states.
  2. Begin optimizing the system by following the [Theory of Constraints](https://en.wikipedia.org/wiki/Theory_of_constraints): At any time, just one of a system's inputs is constraining its other inputs from achieving a greater total output. Make incremental changes. Alter the incentive landscape. [If you can make your system less miserable, make your system less miserable!](https://astralcodexten.substack.com/p/book-review-the-cult-of-smart)
  3. Re-examine the system from the ground up. Get data. Take nothing but the proven, underlying principles as given. Work up from there to create something better.

The implicit question is — if everyone hates the current system, who perpetuates it? Some [systems with systemic/incentives failures are broken in multiple places so that no one actor can make them better](https://slatestarcodex.com/2014/07/30/meditations-on-moloch/), even though, in principle, some [magically coordinated action could move to a new stable state](https://equilibriabook.com/molochs-toolbox/).

A system needs competition and [slack](https://slatestarcodex.com/2020/05/12/studies-on-slack/) (the absence of binding constraints on behavior). By having some margin for error, the system is allowed to pursue opportunities and explore approaches that improve it. [Slack prevents desperation and helps planing for long term (by not havig to put all the effort in the short term)](https://thezvi.wordpress.com/2017/09/30/slack/).

Dividing a large systems into multiple smaller competing ones will make them evolve different ruleset and will allow you to pick the best one. Systems will have [trivial inconveniencese, and they usually have more implications than it seems](https://www.lesswrong.com/posts/reitXJgJXFzKpdKyd/beware-trivial-inconveniences).

A mental model of a system is the reduction of how it works. The model cuts through the noise to highlight the system's core components and how they work together.

#### [Inadequate Equilibria](https://equilibriabook.com/molochs-toolbox/)

An Inadequate Equilibrium is a situation in which a community, an institution, or society at large is in a bad _Nash Equilibrium_. The group as a whole has some sub-optimal set of norms and it would be better off with a different set of norms, but there's no individual actor who has both the power and the incentive to change the norms for the group. So the bad equilibrium persists. These concepts can be sorted in 3 categories:

1. Cases where the decision lies in the hands of people who would gain little personally, or lose out personally, if they did what was necessary to help someone else.
1. Cases where decision-makers can't reliably learn the information they need to make decisions, even though someone else has that information.
1. Systems that are broken in multiple places so that no one actor can make them better, even though, in principle, some magically coordinated action could move to a new stable state.

Some examples:

- Making the switch from not relying on prediction markets to relying on prediction markets is fraught, because it might embarrass the leadership of existing institutions by revealing that their professed estimates are not very credible.
- There are several newly designed voting methods which are likely to be improvements over the current system, but most have seen limited, if any, uptake.
  - It's difficult to change political systems from the outside.
  - Within a two-party system, both benefit from first past the post voting, as they know they have a ~50% chance of winning each election, so there is no incentive for them to change from within.
  - Proponents of voting reform have not yet been able to coordinate on which method they recommend.
- Ongoing overfishing of ocean fish. Each individual fishery (and, at a higher level, each country) would prefer a world where everyone fishes a sustainable amount, rather than overfishing and crashing the fish populations that they all rely upon, but without a centralized enforcement mechanism, they have no way of ensuring that the other fisheries (or countries) go along with them in cutting back on fishing, so unilaterally doing so would simply make them get out-competed by others.
- Countries building up their militaries. Most of the use of sizable militiaries is fighting against other militaries (and as a deterrent against such), so they are overall a negative-sum game. If countries all agreed to cut back their militaries, they would (for the most part) all benefit, but due to the competitive nature, there is a strong incentive to not cut back.
- Using companies producing widgets as an example, each company might wish to fairly pay their workers, maintain a safe work environment, and not pollute the environment. However, other companies can gain an edge by sacrificing things in favor of producing more widgets (e.g. hiring more workers at cheaper wages). Thus, the principled company must make similar changes, or get outcompeted. This can continue until the companies have all sacrificed everything they can in favor of more productivity, even if all of them would have preferred to peacefully coexist with comfortable work conditions.
- Doctors being overly cautious in treatment. The incentives punish positive mistakes much more heavily than negative ones. In this case, any deviation from what is considered to be the "proper" way of dealing with a case subjects the doctor to risk of being sued for malpractice in a way that sticking to the "proper" method does not, even if the deviation would have been a net positive in expectation for the patient.

## Incentives

Incentives matter. Everything around you is driven by incentives. There are rarely true "irrational" decisions. If a decision looks irrational to you, it's most likely because you don't truly understand the incentives driving that person.

Behavior is hard to fix. When people say they've learned their lesson they underestimate how much of their previous mistake was caused by emotions that will return when faced with the same circumstances unless incentives have changed.

_"Simple, clear purpose and principles give rise to complex and intelligent behavior. Complex rules and regulations give rise to simple and stupid behavior"._ Dee Hock.

To reach a goal, reduce friction or increase incentives/rewards. To build better institutions, alter the incentive landscape.

### Evolution

Evolution affects almost everything (life, ideas, communities, systems, ...).

- Every culture is the gradual accumulation of useful environmental adaptations combined with random memetic drift.
- Systems that evolve organically are usually, [but not always](https://slatestarcodex.com/2017/03/16/book-review-seeing-like-a-state/), well-adapted to their purpose. Cultures, ancient traditions, and long-lasting institutions contain irreplaceable wisdom that's hard to pin down if you're designing them from scratch.

### Antifragility

Antifragility is a property of systems that increase in capability, resilience, or robustness as a result of stressors, shocks, volatility, noise, mistakes, faults, attacks, or failures.

It's fundamentally different from the concepts of resiliency (ability to recover from failure) and robustness (ability to resist failure).

Antifragility is beyond resilience or robustness. The resilient resists shocks and stays the same. The antifragile gets better.

Evolution is antifragile. In a stable system, animals won't evolve. In a volatile system, they will. [Just that a little bit of disorder is good](https://astralcodexten.substack.com/p/book-review-antifragile). Evolution is a system that allows volatility rather than unwisely trying to buffer against it. Being exposed to evolution sucks - animals very often die. Perhaps it would be much kinder if somebody gave unfit animals some Animal Chow to prevent them from starving. But such kindness would prevent natural selection, and gradually weaken the species (or, more technically, the species' suitability to its niche) until eventual cataclysm.

[On areas with frequent catastrophes, where the catastrophes have externalities on people who didn't choose them, you want to lower variance, so that nothing ever gets bad enough to produce the catastrophe. In an area where people can choose whatever they want, and are smart enough to choose good things rather than bad ones, you want to raise variance, so that the best thing will be very good indeed, and then everybody can choose that and bask in its goodness](https://astralcodexten.substack.com/p/more-antifragile-diversity-libertarianism).

### [Pareto Principle](http://billyshall.com/blog/paretos-principle)

There is a cost to pursuing any strategy, whether it's in time, money, effort, resources, etc. Most strategies have diminishing returns, meaning that, as you keep at them, you get less and less out of an additional marginal bit of effort.

The **Pareto principle or the 80/20 rule states that eighty percent of the results come from twenty percent of the effort**.  Early gains tend to be the largest and most of strategies eventually stops being worthwhile.

Today, Pareto's Principle can also be observed in our daily lives, we only need to take a glance around to observe it in action. Once we can identify the occurrence, we can focus more of our energy on tasks that produce the most results.

The key insight is this: **there is usually a clever hack**. The world is not fair. Effort is not distributed as it should be. And this isn't because people are dumb, or not trying. This is the default state of the world. Allocating your effort efficiently is hard. And this is the default state of the world for you.

[We spend most of our lives stuck in bad local optima](https://www.neelnanda.io/blog/mini-blog-post-22-the-8020-rule). We have a set of default actions, standards ways of doing things and solving problems we come across. And these are way better than nothing, but nowhere near optimal. So to get out of a local optima, you need to develop the skill of noticing when you're in one, being creative to find a better way, and implementing that to move to a better one.

## Resources

- [Tools for better thinking](https://untools.co/): Collection of thinking tools and frameworks to help you solve problems, make decisions and understand systems.
