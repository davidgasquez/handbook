# Ideas

A few personal random ideas. A multitude of bad ideas is necessary for one good idea!

## Key Properties of Ideas

- Timeless.
- No replication costs.
- Creates win-win situations.
- [[Network Effects]].

## Interesting Areas

- [[Open Data]]
- [[Governance]]
- [[Programming]]
- [[Decentralized Web]]
- [[Learning]]
- [[Science]] (biology, astrophysics, neuro, ...)

### Hyper Mega Awesome Game

- Modular Approach. The idea is to have some kind of state (main character, currency, ...) and multiple shards to play. Each shard could implement a different rule set or genre.
- [[Modularity]] could also be implemented in the graphic side. You can choose the graphics pack you like just like another cosmetic similar to Rimworld or Dwarf Fortress.
- Player Driven Economy. Everything is made by players and traded for real life currency. The developers only get a fee for each trade. This makes the game fully F2P but also supports the developers.
- Companion Apps. Some tasks like trading or [[Planning]] could be done from a mobile device.
- Systems (items, skills, monsters, ...) could be affected by evolutionary processes or driven by [[Artificial Intelligence Models]]
  - Merging two skills could produce a new one (inheriting properties and perhaps with a small mutation).
  - Monsters inside an area could develop resistance against what's killing them, forcing a change of metagame strategies.
  - Quests rewards will also change dynamically like a market.
- Players can vote for the next patch changes with in game money. This way developers gets feedback on what's important.
- Could have a GPS RPG extension. Locations in the real world would be named similarly to the real place but with a twist given by a Neural Network.
- Factions can take control of a region and build new things there.

### Unconventional Changelogs

- What if each city or town had a changelog? What changed in the last _release_? Did it change a street direction or opened a new commerce?
- What if stores had a changelog? That'd mean price history for each product and also new products would be easier to find.
- With [[Artificial Intelligence Models]], we could generate changelogs for "anything".

#### Structured Company Changelog

- Create and maintain a _Company Changelog_ in a table (structured and parse-able format) so it can be fed to something like Mixpanel or joined to other datasets to do analysis.
- Add data from known sources:
  - Github PRs
  - OKRs
  - Releases
  - Holidays
- Use something like GitHub Releases to publish the changes as artifacts for people to consume.

### Fake Currencies

- A chores app where kids could earn a currency. This could be traded for rewards like going to the cinema or getting a new PC game.

### Open Knowledge Repository

- Research.
  - Each publication is a [[Git]] repository, where people can contribute to make corrections.
- Distillation. Deeply digesting ideas, and putting them together into a framework of thinking.
  - Made by a small number of people with a strong vision and a deep investment in the article.
- Publication.
  - Should have different resolutions. E.g: Blog post for the general public, article for the scientific community, paper for the raw idea.

### City Discovery

- Create an activity similar to a gymkhana mixed with escape room. Players have to solve riddles and puzzles while learning about the city and its history.
- There might be digital and real life puzzles.
- Clues might be scattered across many checkpoints with actors as "NPC"s to guide the players.
- For big and closed areas, set up a Photo Battle Royale. You're out in a park. Make a group chat and eliminate people by making photos of them. The goal is to collect trophies without being eliminated.

### Token Recommendation Engine

- Since most blockchain transactions and wallet states are public, you can get good data on which tokens people similar to you are holding.
- This might be useful to discover new assets.

### Open Data Organization

Would love to work on [a company/cooperative focused on Open Data](https://github.com/datonic) with the following ideals:

- Small core team ([5-15 persons](https://x.com/kepano/status/1706690014657274201))
- Remote-first, Asynchronous communications first
- No managers or PMs
- Transparent decision-making
- Profit-sharing among the team
- Purpose-driven

### Evolutionary Algorithms with LLMs

- If there is a task that you can measure (e.g: Kaggle competition), you can use evolutionary algorithms to find the best solution by providing a population of LLMs producing code / features.
- Each individual genome is a [prompt](https://github.com/shobrook/promptimal/blob/master/promptimal/optimizer/prompts.py) and a goal. Run and mix them to produce a new generation!
- The fitness is the evaluation of the model against the evaluation metric.

### Decentralized Kaggle

- A twist on Kaggle, mixing the ML competition aspects with Prediction Markets (e.g: polymarket).
- Similar to Numerai, participants send submissions and stake some amount of money.
- The best submissions are selected and the money is distributed among the participants depending on their stake.
- For each task, rewards are given per row/prediction, not per model. This encourages a [[Plurality]] of models to be used that specialize in different tasks.
- Similar approach could be done to incentivize the creation of new datasets. An entity holds out some "ground truth" dataset. Participants can submit datasets and stake some amount of money. The closest dataset to the ground truth is selected. There might be dragons (generating fake data that follows the distribution)!
- Pluggable Identity with ENS, DID, ...
- Infrastructure for [infofinance](https://vitalik.eth.limo/general/2024/11/09/infofinance.html).
