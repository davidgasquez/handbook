# Teamwork

- Explicitly define the [[values]] and desired [[culture]] of your team.
- Share a vision to make [loosely coupled, tightly aligned teams](https://labs.spotify.com/2014/03/27/spotify-engineering-culture-part-1/). Then, define the strategy with [[Writing Team Key Results | great key results]].
	- When coming up with a long-term vision is important to stay abstract.
		- Stick to defining components and keep concepts generic (cache, database, algorithm, ...). Show how the components interact.
		- Define boundaries and limitations of each component.
- Work in the open and [[Documentation | document]] everything.  Transparency increases understanding and reduces synchronization challenges. **[Emulate Open Source projects](https://tomayko.com/blog/2012/adopt-an-open-source-process-constraints) and [[Remote Jobs | remote companies]]**.
- Create a [[Company Handbooks | handbook]] to store your [[Company Knowledge Management | company knowledge]]. Document:
	- [[Processes]].  Status updates, [[Design Docs]], [onboarding docs/scripts](https://about.gitlab.com/blog/2020/02/10/lessons-learned-as-data-team-manager/),  [[Checklist]], ...
	- Decisions. Context and rationale can be documented in a durable location.
		- Each team should [keep a changelog](https://keepachangelog.com/en/1.0.0/). [The company too](https://medium.com/linear-app/startups-write-changelogs-c6a1d2ff4820). ^473cb4
		- Aim to [confirm and log decisions](https://understandlegacycode.com/blog/earn-maintainers-esteem-with-adrs/) to move them forward. [Everything must have an URL](https://ben.balter.com/2015/11/12/why-urls/).
		- Show your work. Capture who made what decision and when, along with a detailed, but _concise_ description of why and how that decision was made.
		- Consistent changelogs also communicate new features, the value they get from your product, and your commitment to improving it.
	- [[Meetings]] agendas and conclusions.
	- Responsibilities. Things that aren't your fault can still be your responsibility.
	- Defaults. Each thing should have a place by default, docs, issues, ...
- Aim to be a completely autonomous team. Everyone should feel empower to make decisions. Those who are responsible for something must have the means and context to effect it. You build it, you run it! **The company strategy guides the team, it doesn't tell it what to do.**
- Run [Automated Check-ins](https://basecamp.com/features/checkins) to share things explicitly. What are people working on, what are they planning to work on next, ...
- Lack of ownership is the root of all evil.
	- Having skin in the game improves the decision making process.
	- [Have direct responsible individuals for everything. Everyone's problem is no one's problem](https://nintil.com/programming). Having a name accountable instead of a vague "the team" or "the process" makes it easy to make changes.
- Write postmortems after large changes. This will create [[Feedback Loops]] to guide learning about what happened and how it can be avoided next time. It'll also help calibrate for the previous decisions.
- Make time to pay technical debt. [[Systems]] evolve organically over time and might get stuck on a local maximum. Alternative abstractions/designs might be better to continue progressing! There are two kinds of tech debt:
	- Things you haven't built yet.
	- Things you shouldn't have built that way.
- When the context changes a lot, you can use [the blue tape technique](https://randsinrepose.com/archives/the-blue-tape-list/) to notice what is wrong with it:
	1. Notice everything that feels off.
	2. Make a list of everything that feels off, no matter how big or small.
	3. Wait a bit, like a month, but address everything.
	- This translates to ideas to review, tools to try, docs you want to write up, ...
- Teams [need slack to absorb and adapt when unexpected things come up](https://www.neelnanda.io/blog/38-slack) and to prioritize the development of force multipliers (tooling and automation).
	- Lack of [[slack]] compounds. It gets harder and harder to get out as more things get added to backlogs and more patches get added on the systems you build (slowing you down in the end).
	- A more focused backlog makes it easier and faster to plan cycles, and ensures the work will actually get done.
- **Focus on business outcomes, not on technologies.**
- When you start from a shared understanding – that you’re all doing your best you can – you can foster a compassionate working environment.
	- Everyone on your team should assume that everyone else on the team is doing their best work, given their circumstances.
	- Trust people. Add [[Processes]] where you need to replace some level of trust.
- Times change, trends change, cultures change. Make it explicit.
- **How to drive change in a team**: find people who agree on the problem, start small, experiment, scale, repeat.
- Scale organizational efforts across a portfolio of synergistic products.
- Ask people ["when do you think you'll get this done"](https://mobile.twitter.com/Carnage4Life/status/1438982223395393536), write it down and then follow up at that time. That makes teams more effective.
- When building something:
	1) Question everything.
	2) Remove more than you add.
	3) Optimize what works.
	4) Shorten iteration cycles. **[Boyd's Law of Iteration](https://blog.codinghorror.com/boyds-law-of-iteration/): speed of iteration beats quality of iteration**.
	5) [[Automation | Automate]].
- Keep great global [[coordination]] and incentivize local experimentation.
	- Being able to run small and compounding experiments (on the product or company [[processes]] and systems) is important.
		- [Some experiments won't work](https://www.lesswrong.com/posts/97LgacucCxmyjYiNT/the-archipelago-model-of-community-standards). But oftentimes it _feels_ like it wont work when in fact you just haven't stuck with it long enough for it to bear fruit. This is hard enough for _solo_ experiments. For group experiments, where not just one but _many_ people must all try a thing at once and _get good at it_, all it takes is a little defection to spiral into a mass exodus.
- The group with the most power determine the system that reflect and reinforce their own way of thinking. Aim for inclusion. *Diversity is being invited to the party. Inclusion is being asked to dance and help organizing the party*.
- [Brainstorm for questions first (explore). Then find the answers (exploit).](https://getpocket.com/explore/item/better-brainstorming)
- Strive for constructive conflict. Get people to [[Asking Questions | ask questions]]. Engage in passionate, unfiltered debate about what you need to do to succeed.
- Encourage to fail. Failing is good if the team [[Learning | learns]] from it!
- Encourage effectiveness. Find ways to free up your time.
- Communication is a central part of working in teams. Prefer [[Asynchronous Communications]], use common [[Communication | communications]] techniques and be friendly. Trust and efficient communication has a big impact on team effectiveness.
- Have a primary [[Communication]] channel.
- Use long-form [[Writing]], rather than [[Meetings]], speaking, and chatting. Speaking only helps who's in the room, [[Writing]] helps everyone.
- Prioritize things that will compound [on shipping faster](https://youtu.be/p2XVU7jLGQw).
	- Make time to build abstractions and tools that increase your team's pace of shipping. Focus on Developer Experience.
	- Break big ideas into small digestible pieces.
	- Weeks of programming can save you hours of [[planning]]. Plan and write [[Design Docs]]!
	- Reduce blockers. Every [small inconvenience](https://www.lesswrong.com/posts/reitXJgJXFzKpdKyd/beware-trivial-inconveniences) slows much more than it might seem.
	- Deploy often. Don't wait for perfection. Ship and iterate. Fix time and change the scope.
	- When everything is important then nothing is important.
- Constantly prioritize. Communicating with the team to make sure everyone understands the what and the why of the priorities, especially in times of change, and is aligned with clarity to move forward.
- Assign as few possible to a project. Should have an owner and a stakeholder.
- Optimizing for short term speed is dangerous if you don't allow some slack to pick up things that will make you faster in the long run.
	- If you want to optimize for speed, you need an experimentation platform to track the impact of changes. Teams need to learn how to [disagree and commit](https://en.wikipedia.org/wiki/Disagree_and_commit).
- Look for a way to decouple things as much as possible and don't aim for perfection. Aim for eventual convergence.
- [Learned helplessness](https://en.wikipedia.org/wiki/Learned_helplessness) can happen in a team. Two of the main reasons of this [normalization of deviance](https://danluu.com/wat/):
	- The team needs to follow processes that have either been externally imposed, or internally imposed but no-one remembers exactly why.
	- The sheer scale and/or complexity of how things work. There is truly no-one who understands the emergent behavior of the [[Systems | system]].
		- E.g: Slow _boiling frog_ situations where existing tools have become ineffective but no one noticed.
- [Act as if you might leave on short notice](https://jmmv.dev/2021/04/always-be-quitting.html).  Document your knowledge, long-term plans, meetings, train people around you, empower other people, delegate and keep learning!
- You have to put in more effort to make something appear effortless. Effortless, elegant performances are often the result of a large volume of effortful. Praise this instead of complex solutions.
- Invisible work will happen. If you're doing it, make an effort to share and get credit for it. Build a narrative (story) for your work. Arm your manager and fight recency bias keeping track of all the things you've done.
- As a manager, give problems to solve, not solutions. Make sure the team knows what they're working toward and that it has the resources needed to complete the work.
- Most software or processes should be opinionated. In increases [[Coordination | collaboration]]. Flexible processes lets everyone invent their own workflows, which eventually creates chaos as teams scale.
- As teams scale, traditional approaches to decision making force a tradeoff between transparency and efficiency.
	- The easiest way to ensure everyone can understand the how and why of a decision is to adopt systems that, through their daily operation, ensure such context is automatically and readily available to those who might want it (and explicitly not only those who presently need it).
- [Run 1:1s (one-on-ones)](https://erik.wiffin.com/posts/how-to-get-the-most-out-of-your-11s/). A recurring meeting with no set agenda between a manager and one of their reports. Don’t make it a status update (these should be async). Chat about anything bothering you, career growth or type work that is interesting for you. End it with actionable next steps.
- Say no a lot, up front. [Distractions are anything that doesn’t help you keep your existing features running, or deliver your top priority faster](https://alexturek.com/2022-03-07-How-to-do-less/). Finishing work is more important than starting it.
- As a new team member:
	- Ask questions without judging. Never ever be _negative_ about the stuff they created. It was done for a reason.
	- Beware of [Normalization of Deviance](https://danluu.com/wat/).

## [How Small Teams Work](https://posthog.com/handbook/people/team-structure/why-small-teams#how-it-works)
- The overall goal is for a team to be as close to its own startup as possible, with only a handful of centralized processes
- Never be more than six people
- Have Accountable Person responsible for its performance - whoever is most appropriate depending on what the team is working on. This does _not_ mean the most senior person on the team.
- Must have (1) a customer (internal or external), (2) a mission and (3) [[metrics]].
- There may be certain functions where at your current stage that don't need a team yet.
- Each team runs its own processes. This must be done transparently.
- The team has the final call in which of its features get into production, with no need for external QA/control.

## Getting Started
- In your first two weeks, your focus should be on understanding the business, getting to know your peers, validating expectations, and getting yourself organized so that you're able to apply what you'll learn in future weeks.
- There's a real danger in thinking that what made you successful in the past will make you successful now.
- The team you'll be working on will probably have some kind of [normalized deviance](https://danluu.com/wat/). Try to [understand why everything is as it is](https://fs.blog/chestertons-fence/) before doing any recommendations. 

## Links

- [Ways of Working](https://github.com/joelparkerhenderson/ways-of-working) - Guidelines that improve teamwork and communication.
- Team Management.
  - [IPFS](https://github.com/ipfs/team-mgmt).
  - [Kubernetes Governanve](https://github.com/kubernetes/community/blob/master/governance.md).
  - [Linear Method](https://linear.app/method/introduction).
- Guides to Communications:
  - [Gitlab Communications](https://about.gitlab.com/handbook/communication/).
  - [Basecamp Communications](https://basecamp.com/guides/how-we-communicate).
- [Engineering Fundamentals Checklist](https://microsoft.github.io/code-with-engineering-playbook/ENG-FUNDAMENTALS-CHECKLIST/).
- [Know Your Team](https://knowyourteam.com/blog/). Thoughts on how to become a better leader, and avoid being a bad boss.
