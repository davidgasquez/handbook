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

Write down processes, take measures and then iterate. You cannot improve what you cannot measure. You cannot improve what you cannot explain.

[There are three kinds of processes](https://fs.blog/tobi-lutke). There's a kind of process that makes things that were previously impossible to do, possible. That's good. Then there's a kind of process that makes something that was previously possible significantly simpler, which is also good. And then there's everything else. E.g: telling people to behave slightly different from what common sense tells them to do without making any impact.

You can [optimize processes](https://youtu.be/lhbLNBqhQkc) through [experiments](https://rs.io/how-to-get-started-with-anything/), removing barriers, or adding tools.

When designing processes, look for these properties:

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
- Focus on incentives.

To [change a system](https://intenseminimalism.com/2015/a-framework-for-thinking-about-systems-change/) you need vision, skills, incentives, resources and an action plan. Changing a [complex system](https://complexityexplained.github.io/) is hard and [even if the intention is good, the result might not](https://fs.blog/2013/10/iatrogenics/). [A complex system that works is invariably found to have evolved from a simple system that worked](https://en.wikipedia.org/wiki/John_Gall_(author)#Gall's_law). Complex systems usually have [attractor landscapes](https://ncase.me/attractors/) that can be used to change it. [The world is richer and more complicated than we give it credit for](https://slatestarcodex.com/2017/03/16/book-review-seeing-like-a-state/). A good approach to incrementally chance a system (similar to natural selection) is to:

  1. Start by identifying the highest-leverage level to optimize at: Ask whether you're optimizing the machine or a cog within it.
  2. Begin optimizing the system by following the [Theory of Constraints](https://en.wikipedia.org/wiki/Theory_of_constraints): At any time, just one of a system's inputs is constraining its other inputs from achieving a greater total output. Make incremental changes. Alter the incentive landscape.
  3. Re-examine the system from the ground up. Get data. Take nothing but the proven, underlying principles as given. Work up from there to create something better.

Some [systems with systemic/incentives failures are broken in multiple places so that no one actor can make them better](https://slatestarcodex.com/2014/07/30/meditations-on-moloch/), even though, in principle, some [magically coordinated action could move to a new stable state](https://equilibriabook.com/molochs-toolbox/).
A system needs competition and [slack](https://slatestarcodex.com/2020/05/12/studies-on-slack/). Dividing a large systems into multiple smaller competing ones will make them evolve different ruleset and will allow you to pick the best one.

A mental model of a system is the reduction of how it works. The model cuts through the noise to highlight the system's core components and how they work together.

### Antifragility

Antifragility is a property of systems that increase in capability, resilience, or robustness as a result of stressors, shocks, volatility, noise, mistakes, faults, attacks, or failures.

It's fundamentally different from the concepts of resiliency (ability to recover from failure) and robustness (ability to resist failure).

Antifragility is beyond resilience or robustness. The resilient resists shocks and stays the same. The antifragile gets better.

### [Pareto Principle](http://billyshall.com/blog/paretos-principle)

There is a cost to pursuing any strategy, whether it’s in time, money, effort, resources, etc. Most strategies have diminishing returns, meaning that, as you keep at them, you get less and less out of an additional marginal bit of effort.

The **Pareto principle or the 80/20 rule states that eighty percent of the results come from twenty percent of the effort**.  Early gains tend to be the largest and most of strategies eventually stops being worthwhile.

Today, Pareto's Principle can also be observed in our daily lives, we only need to take a glance around to observe it in action. Once we can identify the occurrence, we can focus more of our energy on tasks that produce the most results.

## Incentives

Incentives matter. Everything around you is driven by incentives. There are rarely true "irrational" decisions. If a decision looks irrational to you, it's most likely because you don't truly understand the incentives driving that person.

Behavior is hard to fix. When people say they've learned their lesson they underestimate how much of their previous mistake was caused by emotions that will return when faced with the same circumstances unless incentives have changed.

_"Simple, clear purpose and principles give rise to complex and intelligent behavior. Complex rules and regulations give rise to simple and stupid behavior"._ Dee Hock.

To reach a goal, reduce friction or increase incentives/rewards. To build better institutions, alter the incentive landscape.

## Resources

- [Tools for better thinking](https://untools.co/): Collection of thinking tools and frameworks to help you solve problems, make decisions and understand systems.
