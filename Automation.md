# Automation

- Aim for automating all your job. [A good way is to start writing a script that only prints out the steps required to do a task](https://blog.danslimmon.com/2019/07/15/do-nothing-scripting-the-key-to-gradual-automation/). You can replace these steps one by one and do the rest manually until they're all automated.
  - [Not everything should be automated right away](https://xkcd.com/974/).
  - [Fake it, until you automate it!](https://understandlegacycode.com/blog/fake-it-until-you-automate-it/)
- Automation is used for Precision, Stability and Speed. It reduces or eliminates human error and brings stability to a system. [Automation is great when it replaces a stable, well-working manual process](https://news.ycombinator.com/item?id=30230367).
- [Automation is putting process into code](https://queue.acm.org/detail.cfm?id=3197520):
  1. Document the steps. Following a step-by-step guide is automation: you are the CPU. A great starting point is adding a [[checklist]] to PRs.
  2. Create automation equivalents. Add command-line snippets to replace steps.
  3. Create automation. Create a script that runs everything.
- Drive standards through automation and building internal tools/scripts rather than through extensive [[documentation]].
  - Standards can help to reduce this friction but take time. Before jumping into standards processes, [consider other ways to encourage consistency](https://blog.ldodds.com/2023/09/18/consistency-before-standards/).
  - If you jump into standards, [make them open, modular, interoperable, customizable, and extensible](http://web.archive.org/web/20250327201845/https://voltrondata.com/codex/standards-over-silos).
- Makefiles are a great way to document and consolidate different projects of a team. Each project should have a [`make` that runs it](https://gagor.pro/2024/02/how-i-stopped-worrying-and-loved-makefiles/), and perhaps a `make deploy` to deploy it. Language and tool independent!
