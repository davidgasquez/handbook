# Open Data

> People should be able to collaborate on Open Data the same way we collaborate on Open Source code.

## Motivation
[Open data is a public good](https://en.wikipedia.org/wiki/Open_data#Open_Data_as_commons). As a result, individual [[incentives]] are not aligned with collective ones.

As an organization or research group, [spending time curating and maintaining datasets for other people to use doesn't make sense](https://en.wikipedia.org/wiki/Economics_of_open_data), unless that's how you make money. As a result:
- Data ends up siloed in multiples places and multiple formats. Interoperability is only a wild dream.
- Data is commonly stored in perishable hardware and formats.
- Datasets are hard to index.
- No incentives exists for people to collaborate on improving or curating datasets.

[Open Data can help organizations, scientist, and governments make better decisions](https://twitter.com/patrickc/status/1256987283141492736). Data is the best way to learn about the world and [[Coordination | coordinate]] people.

Open protocols create open systems. Open code creates tools. **Open data creates open knowledge**. We need better tools, protocols, and mechanisms to improve the Open Data ecosystem. It should be easy to find, download, process, publish, and collaborate on open datasets.

Iterative improvements over public datasets would yield large amounts of value. Access to data gives people the opportunity to create new business and make better decisions. Open Source code has made a huge impact in the world. Let's make Open Data do the same! Data brings freedom.

### Why now?
We have better storage, we have simpler compute, we have more data. We need to go one level up in the abstraction ladder.

During the last few years, a cambrian explosion of open source tools have emerged. There are new query engines (e.g: DuckDB, DataFusion, ...), execution frameworks (WASM), standards (Arrow, Parquet, ...), and a growing set of open data marketplaces (HuggingFace Datasets, Filecoin Slinghshot). Also, [DeSci](https://ethereum.org/en/desci/)!

Organizations like [Our World in Data](https://ourworldindata.org/) or [538](https://fivethirtyeight.com/) provide useful analysis but have to deal with _dataset management_ building custom tools around their workflows. There is no `data get OWID/daily-covid-cases`, no `datasets.storage` that could act as entrypoting/protocol to discover datasets that's not Google.

We could have a better ecosystem if we collaborate with open standards! So, lets move towards more composable, maintainable, reproducible data.

## Design Goals
- **Easy**. For people to use it, it should be easy to create, curate and share datasets.
	- Data is useful when is used! We're not using most of humanity's open datasets as much as we could. That's now because they're not available but because they're hard to get.
- **Versioned and Modular**. Data and metadata (e.g: `relation`) should be [updated, forked and discussed](https://github.com/jbenet/data/blob/master/dev/designdoc.md#data-hashes-and-refs) as code in version controlled repositories.
	- Prime composability (e.g: [Arrow ecosystem](https://thenewstack.io/how-apache-arrow-is-changing-the-big-data-ecosystem/)) so tools/services can be swapped without affecting the end result.
	- Provide a declarative way of defining the datasets schema and other meta-properties like _relations_ or _tests_.
	- Metadata is a first-class citizen.
- **Reproducible and Verifiable**. People should be able to trust the final datasets without having to recompute them from scratch. Datasets are declarative and inmutable. They become [software defined assets](https://dagster.io/blog/software-defined-assets).
	- Thanks to inmutability, you could move backwards in time and run transformations or queries on how the dataset was at a certain point in time.
- **Permissionless**. Anyone should be able to add/update/fix datasets and metadata. GitHub style collaboration and curation.
- **Aligned Incentives**. Curators should have incentives to improve datasets and metadata. Data is messy after all, but a good set of incentives could make great datasets surface and reward contributors accordingly.
	- Bounties could be created to reward people that adds useful but missing datasets.
	- Surfacing and creating great datasets should be rewarded.
	- Curating the data provides compounding benefits for the entire community!
- **Open Source and Decentralized**. Datasets should be stored in multiple places. E.g: S3 replicating to something like IPFS.
	- Don't create yet another standard. Provide a way for people to integrate current indexers. Work on _adapters_ for different datasets sources.

## Modules

### Packaging
- **Distribution**. Decentralized. No central authority. Can work in a closed network.
- **Indexing**. Should be easy to list datasets matching a certain pattern or reading from a certain source. 
	- Datasets could be linked to a [[Open Data#Datafile | Datafile]] with description, default visualizations, WASM linked code...
	- One repository is one dataset.
- **Formatting**. Datasets should be saved and exposed in multiple formats (CSV, Parquet, ...). Could be done via WASM transformations. The package manager should be **format and storage agnostic**.
- **Social**. Stars, users, citations, attaching default visualizations (d3, [Vega](https://vega.github.io/), [Vegafusion](https://github.com/vegafusion/vegafusion/), and others), ...
	- Importing datasets. Making possible to `data fork user/data`, improve something and publish the resulting dataset back.
	- Have issues and disscussions close to the dataset.
- **Extensible**. Users could extend the package resource (e.g: [Time Series Tabular Package inherits from Tabular Package](https://specs.frictionlessdata.io/tabular-data-package/)) and add better support for that kind of data.

### Storage
- **Permanence**. Each version should be accessible and permanent.
- **Versioning**. Should be able to manage diffs and incremental changes in a smart way. E.g: only storing the new rows or columns.
- **Smart**. Use appropriate protocols for storing the data. E.g: rows/columns shouldn't be duplicated if they don't change.
	- Think at the dataset level and not the file level.
	- Tabular data could be partitioned to make it easier for future retrieval.
- **Inmutability**. Data should be append only. Could allow streaming.
- **Flexible**. Allow centralized ([S3](https://twitter.com/quiltdata/status/1569447878212591618), GCS, ...) and decentralized (IPFS, Hypercore, Torrent, ...).
	- Support many types of data. Tables, Geospatial, Images, ...
	- A dataset could have different formats. The protocol could even do the transformation (e.g: CSV to Parquet, JSON to Arrow, ...) automatically or do some checks at the data level to verify they contain the same information. Datasets would be accesible with multiple formats.

### Transformations
- **Deterministic**. Packaged lambda style transformations (WASM/Docker).
	- For tabular data, starting with just SQL might be great.
	- Pyodite + DuckDB for transformations could cover a large area.
	- Datasets could be derived by importing other datasets and applying deterministic transformations in the `Datafile`. Similar to Docker containers. That file will carry [Metadata, Lineage and even some defaults (visualizations, code, ...)](https://handbook.datalad.org/en/latest/basics/101-127-yoda.html)
- **Declarative** Everything should be defined as code. E.g: YAML files with the source datasets and the transformations. Similar to how Pachyderm/Kamu/Holium do.
	- E.g: Orchestrating containers that read/write on IPFS, Pachyderm style.
- **Environment agnostic**. Can be run locally and remotely. One machine or a cluster. Streaming or batch.
- **Templated**. Having a repository/market of open transformations could empower a bunch of use cases ready to plug in to datasets:
	- Detect outliers automatically on tabular data.
	- Resize images.
	- Normalize sound files.
	- Detect suspicions records like a categorical variable value that only appears one time while others values appear many times.
	- Enrich data smartly (matcher + augmenter). If it detects a date, add the day of week. If it detects latitude and longitude, adds country/city.
	- [Templated validations to make sure datasets conform to certain standards](https://framework.frictionlessdata.io/docs/checks/baseline.html).

### Visualizations
- **Sane Defaults**. Suggest basic charts (bars, lines, time series, clustering).
- **Exploratory**. Allow drill downs and customization. Offer a [simple way](https://lite.datasette.io/) for people to query/explore the data.
- **Dynamic**. Use only the data you want. Datasets could be exposed by partitions or allow lightweight SQL queries in the URL with filter pushdown.

## Extra Thoughts
- There are already open source projects like [Airbyte](https://airbyte.com/) that could be used to build open data connectors. It would make possible replicating something from `$RANDOM_SOURCE` (like the Ethereum blockchain) to any destination (like IPFS).
	- This could be used as a way to make open adapters for datasets. The community could write parsers that know how to read data from HuggingFace, GitHub, Datalad, ...
- [Making a SQL interface](https://twitter.com/josephjacks_/status/1492931290416365568) to query and mix these datasets could be a great step forward since it'll enable tooling like `dbt` to be used on top of it. **Data-as-code**.
	- SQL should be enough for unlocking most part of the potential. E.g: joining Wikipedia data to Our World In Data.
	- There are some [web3 DAOs already using `dbt` to improve data models](https://github.com/MetricsDAO/harmony_dbt/tree/main/models/metrics)!

## Open Questions
- What would be a great use case to start with?
	- Why should people use this vs doing their own thing?
- How can datasets be indexed?
- Some datasets are not static (e.g: Ethereum `blocks`). How can we stream new data?
- Is it possible to [mount large amount of data](https://rclone.org/commands/rclone_mount/) ([FUSE](https://github.com/datalad/datalad-fuse)) from a remote siyrce and get it dynamically as needed? 
- Can new table formats play efficiently with IPFS?
	- E.g: Running [`delta-rs`](https://github.com/delta-io/delta-rs) on top of IPFS.
- Is it possible to run Spark/Trino on top of IPFS with Bacalhau?
- What would be the ideal tabular format for IPFS?
	- Parquet could be a great fit if we figure out how to deterministically serialize it and integrate with IPLD.
- Homomorphic encription on private data?

### Related Projects

#### Computation
- [Kamu](https://www.kamu.dev/).
- [Algovera](https://www.algovera.ai/).
- [Holium](https://docs.holium.org/). An open source protocol dedicated to the management of data connected through transformations. Similar to Pachyderm but using WASM and IPFS.
- [Ocean Protocol](https://oceanprotocol.com/technology/compute-to-data).
- [Minerva](https://github.com/bdchain/Minerva).
- [The Graph](https://thegraph.com/).
- [Akash](https://akash.network/).
- [Datasette](https://lite.datasette.io/).
- [Trino](https://trino.io/) is a distributed query engine for data. It could work on top of IPFS if it supported it.
- [DuckDB](https://duckdb.org/) WASM client could be used with IPFS as the storage layer for a [decentralized and open data warehouse](https://github.com/davidgasquez/datadex).
- [Kylin](https://wiki.kylin.network/getting-started/project-details/project-architecture/data-analytics).
- [IPFS Compute](https://github.com/adlrocha/ipfs-compute).

#### Data Package Managers
- [Qri](https://qri.io/). An evolution of the classical open portals that added [[Decentralized Protocols]] (IPFS) and computing on top of the data. Sadly, [it came to an end early in 2022](https://qri.io/winding_down). It's the closest thing to the ideal I shared earlier I'm aware of.
- [Datalad](https://www.datalad.org/). [Extended to IPFS](https://kinshukk.github.io/posts/gsoc-summary-and-future-thoughts/). Is a [great candidate](https://archive.fosdem.org/2020/schedule/event/open_research_datalad/)!
- [Huggingface Datasets](https://huggingface.co/docs/datasets)
- [Frictionless Data](https://frictionlessdata.io/projects/#software-and-standards)
- [LakeFS](https://lakefs.io/blog/git-for-data/). More like Git for Data.
- [Quilt](https://github.com/quiltdata/quilt).
- [DVC](https://github.com/iterative/dvc).
- [Splitgraph](https://github.com/splitgraph/sgr)
- [Deep Lake](https://github.com/activeloopai/deeplake).
- [Dim](https://github.com/c-3lab/dim)
- [Dolt](https://docs.dolthub.com/) is another interesting project in the space with some awesome data structures. They also [do data bounties](https://www.dolthub.com/repositories/dolthub/us-businesses)!

## Open Datasets
- [Wikipedia](https://dumps.wikimedia.org/).
- [Github](https://www.gharchive.org/).
- [HackerNews](https://console.cloud.google.com/bigquery?p=bigquery-public-data&d=hacker_news).
- [Reddit](https://pushshift.io/).
- [Blockchain](https://github.com/blockchain-etl)
- [Our World In Data](https://github.com/owid/owid-datasets).
- [Fivethirtyeight](https://data.fivethirtyeight.com/).
- [ProPublica](https://www.propublica.org/datastore/).
- [World Bank](https://data.worldbank.org/indicator).

### Indexes
- [Google Dataset Search](https://datasetsearch.research.google.com/)
- [BigQuery Public Data](https://cloud.google.com/bigquery/public-data).
- [Kaggle Datasets](https://www.kaggle.com/datasets).
- [HuggingFace Datasets](https://huggingface.co/datasets).
- [Data World](https://data.world/datasets/open-data).
- [DoltHub](https://www.dolthub.com/discover).
- [Socrata](https://dev.socrata.com/)
- [Nasdaq](https://data.nasdaq.com/search).
- [Zenodo](https://zenodo.org/search?page=1&size=20&q=&file_type=csv&type=dataset&sort=mostviewed).
- [Splitgraph](https://www.splitgraph.com/explore)
- [Awesome Public Datasets](https://github.com/awesomedata/awesome-public-datasets).
- [Data Packaged Core Datasets](https://github.com/datasets/)
- [Internet Archive Dataset Collection](https://archive.org/details/datasets).
- [AWS Open Data Registry](https://registry.opendata.aws/).
- [Datamarket](https://en.datamarket.es/).
- [Open Data Stack Exchange](https://opendata.stackexchange.com/).
- [IPFS Datasets](https://awesome.ipfs.io/datasets/).
- [Datasets Subreddit](https://www.reddit.com/r/datasets/). [Open Data Subreddit](https://www.reddit.com/r/opendata/).
- [Datahub](https://datahub.io/awesome).
- [Academic Torrents Datasets](https://academictorrents.com/browse.php).
- [Open Data Inception](https://opendatainception.io/).
- [Victoriano's Data Sources](https://victorianoi.notion.site/Data-Sources-79b28912c6d941af99e6ef102c578fa0).

## Open Source Web Data IDE

After playing with Rill Developed, DuckDB, Vega, WASM, and many more tools recently, I think we have all the pieces for an awesome web based BI-ish tool. These are the things I'd love to have:

- Let me add local and remote datasets. Not just one as I'd like to join them later.
- Let me plot it using Vega-Lite. Guide me through alternatives like [Vega's Voyager2](https://vega.github.io/voyager2/) does.
- Let me transform them with SQL ([DuckDB](https://duckdb.org/)) and Python ([JupyterLite](https://jupyterlite.readthedocs.io/en/latest/)).
- Let me save the plots in a separate space and give me a shareable URL encoded link.
	- Local datasets could be added to IPFS or use something like [Magic Wormhole](https://github.com/magic-wormhole/magic-wormhole) to share them.
- It could also have "smart" data checks. Similar to [deepchecks](https://github.com/deepchecks/deepchecks) alerting for anomalies, outliers, noisy variables, ...
- Given a large amount of [[Open Data]]. It could offer a way for people to upload their datasets [and get them augmented](https://subsets.io/).
	- E.g: Upload a CSV with year and country and the tool could suggest GDP per capita or population.

Could be an awesome front-end to explore [[Open Data]].

### Interesting Projects
- [Rill Developer](https://github.com/rilldata/rill-developer).
- [Datastation](https://app.datastation.multiprocess.io/).


#### Datafile
Inspired by [ODF](https://docs.kamu.dev/odf/spec/).

```YAML
name: "My Dataset"
owner: "My Org"
version: 1
description: "Some description"
license: "MIT"
documentation: 
	url: "somewhere.com"
source: 
	- name: "prod" 
	  db: "psql:/...."
pipeline: 
	- name: "Extract X" 
	  type: image 
	  image: docker/image:latest 
	  cmd: "do something" 
materializations: 
	- format: "Parquet"
	  location: "s3://....." 
	  partition: "year"
	  format: "Snowflake" 
schema: 
	fields: 
		- name: "name" 
		  type: "string" 
		  description: "The name of the user" 
		- name: "year" 
		- description: "...." 
	primary_key: "country_name" 
metadata: "..."
```