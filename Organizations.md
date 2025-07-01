# Organizations

- [Organizations are complex adaptive systems — meaning that they consist of individual humans responding to a messy combination of social, cultural, and economic system incentives](https://commoncog.com/blog/org-design-skill/).
- It's all about [[Coordination]].  [Coordination _adds complexity_ to your systems which make them harder to change and work with](https://itnext.io/the-origin-of-complexity-8ecb39130fc). We need more coordination when things get bigger, order matters and consistency is important.
  - Split things up (teams, code, data) into smaller sets.
  - Make sure no one gets blocked.
  - Make things composable (e.g: UNIX).
  - Make processes [[Idempotence|idempotent]] and [[Automation|automated]].
  - [Put mechanisms that enable the organization to learn and adapt](https://www.remyevard.com/posts/2021/11/30/healthy-organizations.html).
- _Culture, Coordination, and Capital_ are the foundation of your ability to have an impact on your mission.
- Every company is a process, and processes may be decomposed into multiple smaller processes. Each process you look at will have outputs that you care about and inputs that you must discover.
- A company may be looked as a combination of 3 things:
  - The people who work at the company.
  - The process the company uses to get work done.
  - The purpose for which the company exists.
- The way people within a company do things—how they communicate, how they create, how they decide—is that company's operating system.
  - All organizations have their own way of doing things ([[Culture]]) and their own particular views of how the world should work (vision).
    - **Vision** is the change in the world you want to see.
    - **Mission** defines the approach that you will execute to make your vision a reality. The **strategy** further refines the mission into concrete steps.
  - There are two core processes that take place within any company: making decisions and doing work.
- Align [[incentives]]. Make the right thing to do the easiest thing to do.
- The layout of the organization impacts how many hops the information has to do.
  - With each hop, the information loses some signal and increases the noise it carries.
  - Someone should be the information hub (librarian). It helps connecting the dots that wouldn't otherwise get connected.
- Standardized tasks and processes are the foundation for continuous improvement and employee empowerment. Beware of over standardizing or over processing (like optimization, you have to choose the right things to standardize, and the right things to leave untouched).
  - Standardization should be based on tooling and [[Automation]].
  - Simple tools means more time building.
  - Investigate where (and how) [[processes]] and tasks could be automated, and understanding the costs of automating them.
- Focus on minimizing entropy in the organizations. Simplify (Best process is no process, Meetings) and [[Focus]].
- Beware of over-engineering your problems and killing initiatives with useless processes in the organization. Introduce processes one step at a time and making sure everyone is on the same page.
  - Once you have extra people and basically the same set of tasks at hand... sluggish ways of doing things and inefficiency are basically guaranteed.
  - The increase in levels is like a game of telephone and reduces the fidelity of the message/strategy/goal from executive down to line level team members.
  - Unnecessary details and unnecessary coordination makes the project much less attractive for great people.
- People who notice a mistake should benefit from correcting it.
- Decision making should be pushed down the hierarchy to the practitioner.
- An organization exhibits risk aversion comparable to the most risk averse decision maker in the decision chain.
- Every business has an equation that describes how it generates revenue. Write it down and decompose it to better understand the relationships. [Don't try to optimize that number or it'll be gamed](https://www.fast.ai/2019/09/24/metrics/). Solve Problems, not [[metrics]]. When a measure becomes a target, it ceases to be a good measure. Not everything that counts can be measured, and not everything that can be measured counts. [The more important a metric is in social decision making, the more likely it is to be manipulated](https://en.wikipedia.org/wiki/Campbell%27s_law).
  - Your stated strategy must match the strategy revealed in the context of decision making (budgets and teams).
- [[Data Culture|Data]] can be valuable in helping you understand the world, test hypotheses, and move beyond gut instincts or hunches. [[Metrics]] can be useful when they are in their proper context and place.
  - Use data to identify friction points, and constantly experiment with changes to make things easier for you and your customers.
- How does the [data-informed product loop look](https://cutlefish.substack.com/p/tbm-852-the-data-informed-product)?
   1. Have a strategy. Most product strategies are too high level. They say everything and nothing at the same time.
   2. Translate that into models. Don't go from insanely high-level business goals and metrics ([[Dashboards]]), straight to features on a [[Writing a Roadmap|roadmap]]. [Models help us fill that gap](https://cutlefish.substack.com/p/tbm-2553-persistent-models-vs-point).
   3. Add minimally viable measurement.
   4. Identify leverage points.
   5. Explore options.
   6. Run experiments. Update your view of things based on what you just learned, then you have sort of missed the point.
   7. To get better at data-informed product you have to keep going around the loop. It takes practice (and psychological safety and support).
- People within an organization commonly or typically give disproportionate weight to trivial issues (Law of triviality).
- Train employees well enough they could get another job, but treat them well enough so they never want to.
- [Apolitical](https://twitter.com/naval/status/1263322014372130817) work environment is hard to maintain. Choose your company battles and causes.
- Managers will hire more managers as the team scales and that creates new teams. Teams will fight to justify their existence. Beware of this build-up inertia.
  - [The causal structure of your business does not care about departments](https://commoncog.com/becoming-data-driven-first-principles/).
  - [As organizations become less efficient / less effective, they need more and more managers to "manage" that inefficiency. This kicks off a wicked cycle, because they'll self-identify with managing a problem ... which reinforces it.](https://twitter.com/johncutlefish/status/1472669773410410504)
  - [Management in large, dysfunctional companies is a game about promising to ship things to people further up your chain](https://ludic.mataroa.blog/blog/brainwash-an-executive-today). Organizations select for people who support convenient narratives and can maintain positive messaging regardless of reality.
  - It might be interesting to cap the core team size at N people (e.g: 15). Focus on solving one problem, and do it well.
- [When you scale, you automate. This is good and bad. It's nice to be able to get a refund automatically when an item is missing from your order. It's frustrating trying to figure out the right incantation to trick a chatbot in to connecting you to a human. If you can afford it, don't scale past the number of users you can excellently serve. Don't scale to a point where you can't excellently polish your software.](https://samwho.dev/blog/scale-is-poison/)
- [The art of org design is essentially effective iteration towards form-context fit. You need four sub-skills to do effective iteration](https://commoncog.com/blog/org-design-skill/). To get good at org design, you need to build more accurate models of the people in your org, learn how they respond to [[incentives]], and in build enough power and credibility to get your org changes to take place.
- Internally, you should not "sell", but truth seek.
- Transparency is a vital value. Transparency gets people to treat the company as their own.
- Adoption of new [[processes]] should _always_ take the step-by-step iteration process into account. You should _never_ think of it as a system to be adopted wholesale; you should always think “hmm, this is a set of tools that seem to work for _some_ context; how do I know this works for mine?” And then you should break those processes down to atomized pieces, and apply them by running smaller, more iterative tests. Understanding the original context is usually key to understanding if the processes have a shot at working when applied to your company.
- As in other complex [[systems]], we usually blame individuals instead of exploring the root causes. The problem is rarely someone being a villain. It's almost always the system.
- [When facing organizational problems do not; ignore them, give up, switch to a top down approach, involve more "lead people", rely on heroes or aim for perfection](https://komoroske.com/slime-mold/).
- Periodically observe pain points that cost productivity, and task people to reduce them, thereby producing more compound leverage across the whole organization.
- [In any organization, the people devoted to the benefit of the organization itself always get in control and those dedicated to the goals that the organization is supposed to accomplish have less and less influence, and sometimes are eliminated entirely](https://en.wikipedia.org/wiki/Jerry_Pournelle#Pournelle's_iron_law_of_bureaucracy).
- Leaders in a healthy organization [[Communication|listen and communicate]].
- Organizations naturally move towards growth: more people, more systems, more conflicting worldviews. To facilitate action, communication systems _will_ be established. Make sure these are effective.
- A company is a superorganism.
- [Teams usually don't stop to think what (and why) things are working or not working](https://cutlefish.substack.com/p/tbm-952-when-nothingeverything-actually). Make time for that.
- By [swinging the pendulum](https://twitter.com/BrandonMChu/status/1502312472644100105) and changing focus periodically, you accept more extreme (and clear) outcomes in the short term, but in the long term arrived at the middle ground you aim for.
- [Big organizations develop strategic inefficiency to carry on doing what they're doing](https://youtu.be/v1eWIshUzr8?t=1147).
- You can't sell something like versioning or encryption as the key feature, you need to put out a comparable product and have these features be the thing that tips the scale in your favour.
- Your business may be thought of as a process. It has inputs, and it has outputs. One type of knowledge is understanding which inputs affect which outputs.
- Bureaucracy develops through deliberate decisions that seemed logical at the time, not just as a natural consequence of growth. Two main causes of bureaucracy are:
  - Poorly designed incentive systems that punish mistakes but don't reward success.
  - Loose coupling between [[systems]]/[[processes]] and desired outcomes.
- Being right is not sufficient to propel organizational change. The hard problem of a business is affecting change, and the bigger the organization, the harder it is to affect that change.

## Resources

- [Kool-aid factory](https://koolaidfactory.com/). A series of zines about the ways organizations coordinate.
- [Toolboxtoolbox](http://web.archive.org/web/20250611231851/https://www.toolboxtoolbox.com/index.html). A curated list of the best business, design, and organisational change toolboxes built by some of the most influential companies, institutions and thinkers.
- [The Compendium](https://thecompendium.cards/) - A collection of cards about organizations, systems, and processes.

### Startups

- [Startup Playbook](https://playbook.samaltman.com/) - Some advice about startups from Sam Altman.
- [Awesome Startup](https://github.com/KrishMunot/awesome-startup) - A curated list of awesome books, videos, courses and resources about making a startup.
- [Startup School Resources](https://www.startupschool.org/library) - Startup resources from YCombinator.
- [Make Handbook](https://makebook.io/) - Learn to bootstrap profitable startups the indie way.
