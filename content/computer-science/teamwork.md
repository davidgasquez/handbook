# Teamwork

- Share a vision to make [loosely coupled, tightly aligned teams](https://labs.spotify.com/2014/03/27/spotify-engineering-culture-part-1/).
- When coming up with a long-term technical vision is important to stay abstract.
  - Stick to defining components and keep concepts. Show how the components interact.
  - Define boundaries and limitations of each component.
  - Write tech specs before you write software \(examples in [Codeburst](https://codeburst.io/on-writing-tech-specs-6404c9791159) and [Lyft](https://eng.lyft.com/awesome-tech-specs-86eea8e45bb9)\). A tech spec forces you to think through complicated issues and to get everyone on the same page. This helps to avoid wasting time on dead-end solutions or building the wrong thing.
- Define the culture and values. [Culture](https://github.com/bjeanes/culture/blob/master/culture_and_ethos.md) is simply a shared way of doing something with passion. Culture is created and re-created by the choices made by individuals every day. It can be reshaped by conscious effort applied gently, subtly, and consistently. It is also a shared mechanism for problem solving.
  - Make the right thing to do the easiest thing to do.
  - Solve problems by fixing the environment that allowed them to occur.
  - Times change, trends change, cultures change. Make it explicit.
- Work in the open and document everything.
  - Processes:
    - Write status updates.
  - Conventions:
    - Confirm decisions to move them forward.
    - Offer conclusions in long discussions.
  - Meetings:
    - Update meetings:
      - Progress: what did I accomplish this week?
      - Plans: What tasks am I doing next week?
      - Problems: what is blocking progress?
      - Other: what else should the team know?
    - Decision meetings:
      - Progress on achieving current quarterly objectives.
      - How the product is being received in the market.
      - How the most important customers are succeeding (or not) using the product.
      - How the team is performing and any people changes needed.
      - Financial position of the company and review of metrics.
  - Responsibilities.
  - Defaults. For example, each thing should have a place by default, docs, issues, ...
- You can create a Handbook to put everything together. Everyone should contribute to it and each page has a clear owner that aim to keep it consistent with the rest of the Handbook.
- Keep a source of truth and keep it up to date. When something is not relevant anymore, deprecate or delete it. All the documents should evolve.
  - Search should be centralized. Keeping 4 tools causes scattered information.
  - Link everything together.
  - Basecamp does that using Basecamp, GitLab uses GitLab.
- Aim to be a completely autonomous team. You build it, you run it!
- Run [Automated Checkings](https://basecamp.com/features/checkins) to share things explicitly. What are people working on, what are they planning to work on next, ...
- Build a culture of stopping to fix problems, to get quality right the first time.
- Standardized tasks and processes are the foundation for continuous improvement and employee empowerment.
- Standardization should be based on tooling and [automation](programming.md#automation).
- Someone should be the information hub. It helps connecting the dots that wouldn't otherwise get connected.
- Meetings should be as short, focused, and small as possible.
- Write postmortems after large incidents. This will create a feedback loop to guide learning about what happened and how it can be avoided next time.
- Don't focus on a particular solution to a problem, instead, describe the problem itself. Always provide the full context of what you're trying to do when requesting help.
- How to drive change: find people who agree on the problem, start small, experiment, scale, repeat.
- The group with the most power determine the system that reflect and reinforce their own way of thinking. Aim for inclusion. Diversity is being invited to the party. Inclusion is being asked to dance and help organizing the party.
- [Brainstorm for questions first. Then find the answers.](https://getpocket.com/explore/item/better-brainstorming)
- Every business has an equation that describes how it generates revenue. Write it down and decompose it to better understand the relationships. [Don't try to optimize that number or it'll be gamed](https://www.fast.ai/2019/09/24/metrics/). When a measure becomes a target, it ceases to be a good measure. Not everything that counts can be measured, and not everything that can be measured counts.
- Data can be valuable in helping us understand the world, test hypotheses, and move beyond gut instincts or hunches. Metrics can be useful when they are in their proper context and place.
- Strive for constructive conflict. Get people to ask questions. Engage in passionate, unfiltered debate about what you need to do to succeed.
- Encourage to fail. Failing is good if the team learn from it!
- Encourage effectiveness. Find ways to free up your time.
- Push relentlessly toward automation.
  - Investigate where (and how) processes and tasks could be automated, and understanding the costs of automating them.
- A company may be looked as a combination of 3 things:
  - The people who work at the company.
  - The process the company uses to get work done.
  - The purpose for which the company exists.
- [Apolitical](https://twitter.com/naval/status/1263322014372130817) work environment is hard to maintain but more effective. Choose your company battles.

## Engineering Process

1. Always create an issue and assign it to you for anything you work on. If it is worth spending time on, it is worth creating an issue for it since that enables other people to learn and help. You can always edit the description or close it when the problem is something different or disappears.
2. When working on an issue, make sure that the issue body contains the latest information. The issue body should be the single source of truth.
3. After a discussion related to an issue update the issue body with the consensus or final conclusions. This makes it much easier to see the current state of an issue for everyone involved in the implementation and prevents confusion later on.
4. Submit the smallest item of work that makes sense. When creating an issue describe the smallest fix possible, put suggestions for enhancements in separate issues and link them.
5. Do not leave issues open for a long time, issues should be actionable and realistic. If an issue has been addressed or is not relevant anymore, close it. If someone disagrees, they can re-open it and explain what is still relevant.
6. If you complete part of an issue and need someone else to take the next step, re-assign the issue to that person.
7. When working on an issue, ask for feedback from your peers. Try to get a [review](https://github.com/thoughtbot/guides/tree/master/code-review) of your work. Even a quick look could do it. If they suggest changes, you get the opportunity to improve. This promotes collaboration and advances everyone's skills.

## Communication

- Use [common techniques](https://github.com/davidgasquez/handbook/blob/master/content/communications.md) and be friendly.
- Prefer asynchronous communications. [It allows for self discovery without interruptions](https://snir.dev/blog/remote-async-communication/):
  - You can keep on your flow without waiting for someone to give you details.
  - You can get into "deep focus" session without context switching that allows for better productivity.
  - You can work whenever, since you are not dependent on anyone immediately.
  - You'll have written records of everything.
- Have a primary communication channel.
- You can not not communicate. Not discussing the elephant in the room is communicating. Few things are as important to study, practice, and perfect as clear communication.
- Use long-form writing, rather than meetings, speaking, and chatting. Speaking only helps who's in the room, writing helps everyone.
- Whenever possible, communicate directly with those you're addressing rather than passing the message through intermediaries.
- If you want an answer, you have to ask a question. People typically have a lot to say, but they'll volunteer little.
- Agree on the terminology. Similar understanding of terms makes discussion more productive.
- Work through confrontations mindfully:
  - Acknowledge the positive intentions. Try to understanding his or her rationale and state it out loud directly to them.
  - Express what you see and what you think! Remember, kindness matters. You are looking at a screen, but you are really talking to a person.
  - Identify and propose a solution. You should try to build consensus by demonstrating how your solution will resolve everyone's concerns, not just your own.
  - Outline the benefits and advantages of your proposal.
  - Understanding. Either nail down agreement on a next action or step, or work together to develop alternatives.
- Guides to Communications:
  - [Gitlab Communications](https://about.gitlab.com/handbook/communication/).
  - [Basecamp Communications](https://basecamp.com/guides/how-we-communicate).

## [Writing a Roadmap](https://github.com/ipfs/team-mgmt/blob/master/ROADMAP_HOW_TO.md)

- Gather Ideas: Collect inputs and data from across your project.
- Draft top-level goals: Create a vision statement with the top problems you aim to solve. What is important to achieve? For whom? Why?
  - Mission: How do we win the fight?
  - Vision: What will the world look like when we win?
  - Purpose: What are we fighting for?
- Chunk progress into milestones: Define the incremental targets to hit in order to accomplish the top-level goals. What must be true to reach this milestone? On what timeline? With what dependencies? What does this unlock?
- Assign projects to milestones: Fill in key projects that are necessary, nice to have, and out of scope to reach those milestones and bucket them accordingly. Why is each project important to achieve that milestone? Which are highest priority? Do they have any dependencies? Approximate how hard/big is each project? (This likely involves iterating on or shuffling the milestones themselves based on capabilities/effort.)
- Iterate iterate iterate: Review this draft with stakeholders to assess whether cross-cutting dependencies can be met, if you're prioritizing the right work, which gaps or open questions you haven't thought of yet.
- Finalize: Get sign off on this version of the roadmap for the upcoming time window. Present it to cross-functional partners and start using it as a communication device to align effort, priorities, and cross-team information sharing.

## [Writing a Design Doc or RFC](https://www.industrialempathy.com/posts/design-docs-at-google/)

- These are relatively informal documents that the primary author or authors of a software system or application create before they embark on the coding project. If code is the bricks and mortar, then these docs are the blueprints.
- Even if no one else reads them, they force you to clarify my thinking before you start the (more expensive) process of implementation.
- Design docs fulfill the following functions in the software development lifecycle:
  - Early identification of design issues when making changes is still cheap.
  - Achieving consensus around a design in the organization.
  - Ensuring consideration of cross-cutting concerns.
  - Scaling knowledge of senior engineers into the organization.
  - Form the basis of an organizational memory around design decisions.
- Write them in whatever form makes the most sense for the particular project.
- A good-to-start-with structure can be:
  1. Context and scope. Overview of the landscape in which the new system is being built and what is actually being built. Focused on objective background facts. Keep it short.
  2. Goals and non-goals. What the goals of the system are, and, sometimes more importantly, what non-goals are.
  3. Design. This is the place to write down the trade-offs you made in designing your software. Given the context (facts), goals and non-goals (requirements), the design doc is the place to suggest solutions and show why a particular solution best satisfies those goals.
  4. APIs. If the system under design exposes an API, then sketching out that API is usually a good idea.
  5. Data storage. Systems that store data should likely discuss how and in what rough form this happens.
  6. Alternatives considered. Share alternative designs that would have reasonably achieved similar outcomes.
  7. Cross-cutting concerns. This is where your organization can ensure that certain cross-cutting concerns such as security, privacy, and observability are always taken into consideration. These are often relatively short sections that explain how the design impacts the concern and how the concern is addressed. Teams should standardize what these concerns are in their case.
- In many docs a diagram can be useful.
- The steps in the lifecycle of a design document are: Create, Iterate, Review, Implement, Iterate and Learn.

### Resources

- [Google Design Doc Template](https://docs.google.com/document/d/18hYAQCTsDgaFUo-VJGhT0UqyetL2LbAzkWNK1fYS8R0/edit#)
- [Awesome Tech Specs](https://eng.lyft.com/awesome-tech-specs-86eea8e45bb9)
- [On Writing Tech Specs](https://codeburst.io/on-writing-tech-specs-6404c9791159)

## Links

- Remote Jobs:
  - [Remote Platforms List](https://docs.google.com/spreadsheets/d/1JfNAbUX_lN9K3MCNHO15GJtJ5qpk7H9Cl3xTBwv2FR8/htmlview) - Lots of websites with remote job offers.
  - [Awesome Remote Job](https://github.com/lukasz-madon/awesome-remote-job) - A curated list of awesome remote working resources.
  - [Remotive](https://remotive.io/). Hand-screens live remote jobs from remote companies.
  - [Outer Join](https://outerjoin.us/). Remote jobs in data science.
- Startups:
  - [Startup Playbook](https://playbook.samaltman.com/) - Some advice about startups from Sam Altman.
  - [Awesome Startup](https://github.com/KrishMunot/awesome-startup) - A curated list of awesome books, videos, courses and resources about making a startup.
  - [Startup School Resources](https://www.startupschool.org/library) - Startup resources from YCombinator.
  - [Make Handbook](https://makebook.io/) - Learn to bootstrap profitable startups the indie way.
  - [Quickapply](https://quickapply.io/) - Apply to 80+ internships with one click.
  - [Occuply](https://occuply.io/) - Apply to hundreds of jobs without ever answering the same question twice.
- Team Management.
  - [IPFS](https://github.com/ipfs/team-mgmt).
  - [Kubernetes Governanve](https://github.com/kubernetes/community/blob/master/governance.md).
