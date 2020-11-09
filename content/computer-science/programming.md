# Programming

A programmer should know [lots](http://programmer.97things.oreilly.com/wiki/index.php/Contributions_Appearing_in_the_Book) [of](http://www.artima.com/weblogs/viewpost.jsp?thread=331531) [concepts](http://programmer.97things.oreilly.com/wiki/index.php/Other_Edited_Contributions). Try to keep in mind the following principles:

- **Small is beautiful**.
  Small things have tremendous advantages over their larger counterparts.
  Among these is the ability to combine with other small things in unique and useful ways.

- **Design for simplicity**.
  Do the [simplest thing](https://landing.google.com/sre/book/chapters/simplicity.html) that could possibly work.
  Benefits of simplicity: ease of understanding, ease of change, ease of debugging, flexibility.
  We can't change our brain to grasp something complex. We need to simplify complexity so we can handle it.
  Writing program code is a good way of debugging your thinking.
  Design is an iterative process. The necessary number of iterations is one more than the number you have currently done. This is true at any point in time. 

- **Do one thing and do it well**.
  By focusing on a single task, a program or function can eliminate much extraneous code that often results in excess overhead, unnecessary complexity, and a lack of flexibility. [Good software makes hard things easy](https://medium.com/s/story/notes-to-myself-on-software-engineering-c890f16f4e4d).

- **Make it work, make it right, make it fast**.
  Build a prototype as soon as possible to get a sense of the entire process.
  Once you have a working prototype, apply guidelines and previous learnings. Then, focus on performance.
  Apply small improvements at each iteration.
  Premature optimization is the root of all evil. Abstraction is a form of optimization and shouldn't be done before the space has been properly explored to know what abstractions should be built. Standardization is a form of optimization and shouldn't be proposed until there's a body of evidence to support what's being standardized.
  [The computer is a machine, but a codebase is an organism](https://meltingasphalt.com/a-codebase-is-an-organism/).

- **Choose portability over efficiency**.
  If today's hardware just about runs a program with just about adequate efficiency, tomorrow's will run it with power to spare.
  The developer task is to make sure his program will run on that new hardware with minimal effort.

- **Data is only useful as long as it's being used**.
  Flat files help ensure that data is usable for the longest possible time.
  For complex data structures where plain text really isn't appropriate, use a structured text format instead.

- **A programmer who can't re-use other programs is condemned to re-write them**.
  Use software leverage to your advantage.
  Many programmers have only a superficial understanding of the importance of re-usable code modules.
  [Code isn't just meant to be executed. Code is also a means of communication across a team, a way to describe to others the solution to a problem](https://medium.com/s/story/notes-to-myself-on-software-engineering-c890f16f4e4d).

- **Silence is golden**.
  A silent command is often more usable, providing the function asked for and nothing more.

- **Think parallel**.
  Most tasks are composed of sub-tasks which may be attacked in parallel.
  This also applies to user interactions.
  Parallelism can save a great deal of time and frustration.

- **The sum of the parts is greater than the whole**.
  A large application built from a collection of smaller programs is more flexible and hence more useful than a single large program.
  The same functional capability may exist in both solutions, but the collection-of-small-programs approach is the more forward-looking of the two.
  [The computer is a machine, but a codebase is an organism](https://meltingasphalt.com/a-codebase-is-an-organism/). The organic nature of code manifests itself in the dual forces of growth and decay. It also suggests that you should know your code smells. These smells won't be causing problems during execution, on the machine. Instead, it's going to cause problems during evolution of the codebase.

- **Look for the 80% solution**.
  Doing 100% of anything is difficult.
  Focusing in the 80% is far more efficient and cost-effective. "Better" is the enemy of "good".
  Handle the 80% and let the 20% fend for themselves.
  80% of the impact comes from 20% of the work.
  [Software is never finished, only abandoned](https://stackoverflow.blog/2020/02/20/requirements-volatility-is-the-core-problem-of-software-engineering/).

- **Treat all the data as an event log**.
  Use a central log where consumers can subscribe to the relevant events.
  Having a central place \([the log](https://engineering.linkedin.com/distributed-systems/log-what-every-software-engineer-should-know-about-real-time-datas-unifying)\) for continuous events make easy to create a stream of data to process and sets a source of truth.

- **There is no silver bullet**.
  Accept that many programming decisions are opinions.
  Make the trade-offs explicit when making judgments and decisions.
  Discuss [tradeoffs](https://twitter.com/kelseyhightower/status/774076482637312001), which you prefer, and reach a resolution.

- **Keep the iteration loop short**.
  Invest in tools to automate and improve the development cycle \(CI, CD\). Decreasing build times a few seconds actually saves a lot of time over time. Deploy often to make the loop end to end. If you need to do something manually more than twice, then write a tool for the third time. An evolutionary architecture consists of three primary aspects: incremental change, fitness functions, and appropriate coupling.

- **Avoid implicit rules**.
  Implicit rules should always be made explicit and shared with others or automated. Ideally, all processes should be written as code, stored, and versioned. Ninimize the cognitive load imposed on your users.

Like any other field, the world of Software Development has some interesting and famous "laws". These are some of them I've found interesting, funny or worth knowing:

- [Laws of Software Development](http://www.globalnerdy.com/2007/07/18/laws-of-software-development/)
- [Famous Laws Of Software Development](https://www.timsommer.be/famous-laws-of-software-development/)
- [Laws of Computing](https://gist.github.com/sorahn/905f67acf00d6f2aa69e74a39de65941)
- [Hacker Laws](https://github.com/dwmkerr/hacker-laws)

## [How to Write a Git Commit Message](https://chris.beams.io/posts/git-commit/)

Version control software enables teams to work in distributed and asynchronous environments, manage changes and versions of code and artifacts, and resolve merge conflicts and related anomalies.

1. Separate subject from body with a blank line.
1. Limit the subject line to 50 characters.
1. Capitalize the subject line.
1. Do not end the subject line with a period.
1. Use the imperative mood in the subject line.
1. Wrap the body at 72 characters.
1. Use the body to explain what and why vs. how.

## [How to make a good Pull Request](https://github.blog/2015-01-21-how-to-write-the-perfect-pull-request/)

1. Include the purpose of the Pull Request.
1. Provide an overview of why the work is taking place.
1. Be explicit about what feedback you want, if any: a quick pair of :eyes: on the code, discussion on the technical approach, critique on design, a review of copy.
1. [Offering feedback](https://mtlynch.io/human-code-reviews-1/)
    1. Familiarize yourself with the context of the issue, and reasons why this Pull Request exists.
    1. Ask, don't tell.
    1. Explain your reasons why code should be changed.
    1. Be aware of negative bias with online communication. Can you use positive language as opposed to neutral?

## Automation

- Aim for automating all your job. A good way is to start writing a script that only prints out the steps required to do a task. You can replace these steps one by one and do the rest manually until they're all automated.
- Automation is used for Precision, Stability and Speed. It reduce or eliminate human error and brings stability to a system.
- [Automation is putting process into code](https://queue.acm.org/detail.cfm?id=3197520).
  1. Document the steps. Following a step-by-step guide is automation: you are the CPU.
  1. Create automation equivalents. Add command-line snippets to replace steps.
  1. Create automation. Create a script that runs everything.
- Drive standards through automation and building internal tools/scripts rather than through extensive documentation.
- Makefiles are a great way to document and consolidate different projects of a team. Each project should have a `make` that runs it, and perhaps a `make deploy` to deploy it. Language and tool independent!

## Databases

- As in any other place, stick to a naming convention to keep things sane.
- Follow a SQL style guide.
  - [Kickstarter's SQL Style Guide](https://gist.github.com/fredbenenson/7bb92718e19138c20591)
  - [Meadmaker's SQL Style Guide](https://github.com/meadmaker/sql-style-guide)
  - [SQL Style Guide](https://www.sqlstyle.guide/)

## [Principles of Game Design](https://youtu.be/zaxAdRlyZQ8)

1. Create concrete,achievable, and rewarding goals.
1. Design for nuanced emotion.
1. Create rapid and robust controls.
1. Make fun toys, and combine them into games.
1. Make the next action obvious.
1. Give clear and immediate feedback with no distraction.
1. Balance skills with challenge.

## Resources

- [Semantic Versioning](https://semver.org/)
- [Documentation Guide](https://www.writethedocs.org/guide/#)
- [Formatting your README](https://guides.github.com/features/wikis/#Formatting-a-readme)
- [Open Source Guides](https://opensource.guide/)
- [Github Badges](https://shields.io/)
- [Icons and Photos For Everything](https://thenounproject.com/)
