# Open Data Protocol

Imagine a decentralized, distributed and permission-less protocol where we could collaborate on data the same way we collaborate on Open Source code.

[Open data is a public good](https://en.wikipedia.org/wiki/Open_data#Open_Data_as_commons). As such, it is an area where individual [[incentives]] collide with collective ones. As an organization, [spending time curating and maintaining a dataset for other companies to use doesn't make sense](https://en.wikipedia.org/wiki/Economics_of_open_data) unless that's how you make money.

We've seen what [Open Data can do for us](https://ourworldindata.org/). Used properly, data is a great tool to educate and [[Coordination | coordinate]] people.

We need better protocols and mechanisms to fund and improve the open data ecosystem. The great news is that we now have a lot of web3 organizations [thinking about data](https://docs.indexcoop.com/our-products/data-economy-index-data), [[Incentives]] and [[Governance]].

How would the protocol look like? Let me share how I see it:
- The protocol should make possible creating, curating and sharing open datasets.
- It should be permissionless. Anyone should be able to add/update/fix datasets and relations between them. Think GitHub style collaboration.
- Curators should have incentives to improve the datasets. Data is messy after all, but a good set of incentives could make great datasets surface and reward contributors accordingly.
	- Curating the data provides compounding benefits for the entire community!
- The main abstractions (things like `dataset`, `relation`) could be updated, forked and discussed as code in version controlled repositories.
	- You could fork `ourworldindata.usa_covid_cases`, improve it and publish it to allow something like `select * from youruser.usa_covid_cases`.
	- Modeling could be limited to SQL and done with something like `dbt` so everything comes down to RAW data and the SQL `dbt` code.
		- This provided a declarative way of defining the datasets schema and other properties as well as the relations.
- Datasets could be stored in a decentralized way using something like IPFS.
- Users could access the data with several open source tools that act as front-end.
	- e.g: a CLI (`./opendata get "user/dataset:version")`, HTTPS or GraphQL endpoints maintained by the community (`awesomeopendata.com/user/dataset:version`),

## Landscape

Fixing Open Data is something people have been working on for a while. These are some of the solutions I'm aware of but I'm sure there are much more tools and approaches out there.

- **Classical Open Data portals**. They usually provide static datasets with different degrees of curation, freshness, and, formats.[Google Dataset Search](https://datasetsearch.research.google.com/search?query=coronavirus%20covid-19&docid=L2cvMTFtX2pzNTN5OQ%3D%3D) surfaces a lot of them.  It works very well as a way of sharing single datasets but makes it very hard to curate and connect them openly given the lack of a standard.
- **Decentralized datasets**. There are also [IPFS datasets](https://awesome.ipfs.io/datasets/). Similar to the classical approach, but decentralized on IPFS. [Datasets are being added continuously](https://youtu.be/-9rKtrwMkG0?t=638). One challenge of this approach is that discoverability of these assets is hard.
	- [There is also `datadex` by Juan Benet](https://juan.benet.ai/blog/2014-03-11-discussion-scienceexchange/) (IPFS Creator). It shares some of the  [ideas](https://github.com/jbenet/data/blob/master/dev/designdoc.md) outlined in this document.
	- [Qri](https://qri.io/). An evolution of the classical open portals that added [[decentralization]] (IPFS) and computing on top of the data. Sadly, [it came to an end early in 2022](https://qri.io/winding_down). It's the closest thing to the ideal I shared earlier I'm aware of.
	- [Holium](https://docs.holium.org/). An open source protocol dedicated to the management of data connected through transformations. Similar to Pachyderm but using WASM and IPFS.
- In web3, we have [Ocean Protocol](https://oceanprotocol.com/) and [The Graph](https://thegraph.com/). They've designed the incentive landscape and provided tools to share and discover data. For now, I think they only work for blockchain related datasets.
- There are also some interesting databases in the space ([DuckDB](https://duckdb.org/)) that focus on decentralizing the querying capabilities, using technologies like WASM.
	- This makes possible an intermediary step in which you could read Parquet files from IPFS, model the data with `dbt` and write them back on IPFS.


## Extra Thoughts
- There are already open source projects like [Airbyte](https://airbyte.com/) that could be used to build open data connectors. It would make possible replicating something from a random source (like the Ethereum blockchain) to a destination (like IPFS).
- With a common standard for the metadata, datasets could be indexed with a computation framework on top of IPFS.
- Querying could also be archived with such computation framework. There are also some databases ([Ceramic](https://ceramic.network/), [Crust](https://www.crust.network/), [Textile Threads](https://github.com/textileio/go-threads)) that work on IPFS but they don't support this use case.
- [Making a SQL interface](https://twitter.com/josephjacks_/status/1492931290416365568) to query and mix these datasets could be a great step forward since it'll enable tooling like `dbt` to be used on top of it. **Data-as-code**.
	- SQL should be enough for unlocking most part of the potential. E.g: joining Wikipedia data to Our World In Data.
	- There are some [web3 DAOs already using `dbt` to improve data models](https://github.com/MetricsDAO/harmony_dbt/tree/main/models/metrics)!
