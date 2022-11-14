# Programming

A programmer should know [lots](http://programmer.97things.oreilly.com/wiki/index.php/Contributions_Appearing_in_the_Book) [of](http://www.artima.com/weblogs/viewpost.jsp?thread=331531) [concepts](http://programmer.97things.oreilly.com/wiki/index.php/Other_Edited_Contributions). Try to keep in mind the following principles:

- **Small is beautiful**.
	- Small things have tremendous advantages over their larger counterparts. Among these is the ability to combine with other small things in unique and useful ways.
	- The more you can decompose, the more innovation you'll drive.
	- The best code is no code, or code you don’t have to maintain.
- **Design for simplicity**.
	- Do the [simplest thing](https://landing.google.com/sre/book/chapters/simplicity.html) that could possibly work.
	- Benefits of simplicity: ease of understanding, ease of change, ease of debugging, flexibility. [The goal of software design is to create chunks or slices that fit into a human mind](https://mobile.twitter.com/KentBeck/status/1354418068869398538). The software keeps growing but the human mind maxes out, so we have to keep chunking and slicing differently if we want to keep making changes.
	- We can't change our brain to grasp something complex. We need to simplify complexity so we can handle it.
	- Eliminate state. If you can’t, make it visible.
	- Design is an iterative process. The necessary number of iterations is one more than the number you have currently done. This is true at any point in time.
	- Complexity is the single major difficulty in the successful development of large-scale software systems.
	- Write code that's easy to delete.
- **Do one thing and do it well**.
	- By focusing on a single task, a program or function can eliminate much extraneous code that often results in excess overhead, unnecessary complexity, and a lack of flexibility. [Good software makes hard things easy](https://medium.com/s/story/notes-to-myself-on-software-engineering-c890f16f4e4d).
	- Design composable primitives.
- **Make it work, make it right, make it fast**.
	- Build a prototype as soon as possible to get a sense of the entire process.
	- Once you have a working prototype, apply guidelines and previous learnings. Then, focus on performance.
	- There is nothing so useless as doing efficiently that which should not be done at all.
	- Writing program code is a good way of debugging your thinking.
	- Apply small improvements at each iteration. Running the program will make it more resilient and robust as more errors get fixed.
	- Premature optimization is the root of all evil. Abstraction is a form of optimization and shouldn't be done before the space has been properly explored to know what abstractions should be built. Standardization is a form of optimization and shouldn't be proposed until there's a body of evidence to support what's being standardized.
		- [Increased efficiency can sometimes, counterintuitively, lead to worse outcomes](https://sohl-dickstein.github.io/2022/11/06/strong-Goodhart.html).
	- Sometimes you have to stop sharpening the saw, and just start cutting.
	- Software which is broken because there is no incentive to ship good software is going to stay broken until the incentives change.
- **Choose portability over efficiency**.
	- If today's hardware just about runs a program with just about adequate efficiency, tomorrow's will run it with power to spare.
	- The developer task is to make sure his program will run on that new hardware with minimal effort.
- **Data is only useful as long as it's being used**.
	- Flat files help ensure that data is usable for the longest possible time.
	- For complex data structures where plain text really isn't appropriate, use a structured text format instead. If you've chosen the right data structures and organized things well, the algorithms will almost always be self-evident. [Data structures, not algorithms, are central to programming](https://users.ece.utexas.edu/~adnan/pike.html).
- **A programmer who can't re-use other programs is condemned to re-write them**.
	- Use software leverage to your advantage.
	- Many programmers have only a superficial understanding of the importance of re-usable code modules.
	- [Code isn't just meant to be executed. Code is also a means of [[Communication]] across a team, a way to describe to others the solution to a problem](https://medium.com/s/story/notes-to-myself-on-software-engineering-c890f16f4e4d).
- **Silence is golden**.
	- A silent command is often more usable, providing the function asked for and nothing more.
- **Think parallel**.
	- Most tasks are composed of sub-tasks which may be attacked in parallel. This also applies to user interactions.
	- Parallelism can save a great deal of time and frustration.
- **The sum of the parts is greater than the whole**.
	- A large application built from a collection of smaller programs is more flexible and hence more useful than a single large program.
	- The same functional capability may exist in both solutions, but the collection-of-small-programs approach is the more forward-looking of the two.
	- [The computer is a machine, but a codebase is an organism](https://meltingasphalt.com/a-codebase-is-an-organism/). The organic nature of code manifests itself in the dual forces of growth and decay. It also suggests that you should know your code smells. These smells won't be causing problems during execution, on the machine. Instead, it's going to cause problems during [[Evolution]] of the codebase.
- **Look for the 80% solution**.
	- Doing 100% of anything is difficult. [Don't focus on perfection](https://youtu.be/pYIho556BS8).
	- Focusing in the 80% is far more efficient and cost-effective. "Better" is the enemy of "good".
	- Handle the 80% and let the 20% fend for themselves.
	- [[Pareto Principle | 80% of the impact comes from 20% of the work]].
	- [Software is never finished, only abandoned](https://stackoverflow.blog/2020/02/20/requirements-volatility-is-the-core-problem-of-software-engineering/).
- **Treat all the data as an event log**.
	- Use a central log where consumers can subscribe to the relevant events.
	- Having a central place ([the log](https://engineering.linkedin.com/distributed-systems/log-what-every-software-engineer-should-know-about-real-time-datas-unifying)) for continuous events make easy to create a stream of data to process and sets a source of truth.
- **There is no silver bullet**.
	- Accept that many programming decisions are opinions.
	- Make the trade-offs explicit when making judgments and decisions. With almost every decision you make, you're either deliberately or accidentally trading off one thing for another thing.
	- Discuss [trade-offs](https://twitter.com/kelseyhightower/status/774076482637312001), which you prefer, and reach a resolution.
	- [Every system eventually sucks](https://www.simplethread.com/20-things-ive-learned-in-my-20-years-as-a-software-engineer/).
- **Keep the [[Feedback Loops | iteration loop]] short**.
	- Invest in tools to [[Automation | automate]] and improve the development cycle (CI, CD). Decreasing build times a few seconds actually saves a lot of time over time. Deploy often to make the loop end to end. If you need to do something manually more than twice, then write a tool for the third time.
- **Avoid implicit rules**.
	- Implicit rules should always be made explicit and shared with others or automated. Ideally, all processes should be written as code, stored, and versioned. Minimize the cognitive load imposed on your users.
	- The best way to understand something is to break it. The second best way is to rewrite it from scratch without using any external libraries.

Like any other field, the world of Software Development has some interesting and famous "laws". These are some of them I've found interesting, funny or worth knowing:

- [Laws of Software Development](http://www.globalnerdy.com/2007/07/18/laws-of-software-development/)
- [Famous Laws Of Software Development](https://www.timsommer.be/famous-laws-of-software-development/)
- [Laws of Computing](https://gist.github.com/sorahn/905f67acf00d6f2aa69e74a39de65941)
- [Hacker Laws](https://github.com/dwmkerr/hacker-laws)
- [Engineering Axioms](https://martinrue.com/my-engineering-axioms/)

## Resources

- [Semantic Versioning](https://semver.org/)
- [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
- [Documentation Guide](https://www.writethedocs.org/guide/#)
- [Formatting your README](https://guides.github.com/features/wikis/#Formatting-a-readme)
- [Open Source Guides](https://opensource.guide/)
- [Github Badges](https://shields.io/)
- [Icons and Photos For Everything](https://thenounproject.com/), [other illustrations](https://github.com/sw-yx/spark-joy#illustrations) and [color toolbox](https://hue.tools/).
- [Command Line Interface Guidelines](https://clig.dev/)
