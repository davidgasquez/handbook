# Open Data

> Enable collaboration on Open Data at the level of current collaboration on Open Source code.
> Move the Open Data ecosystem closer to the Data World that companies live on (tooling, approaches, ...)

## Motivation

[Open data is a public good](https://en.wikipedia.org/wiki/Open_data#Open_Data_as_commons). As a result, individual [[incentives]] are not aligned with collective ones.

As an organization or research group, [spending time curating and maintaining datasets for other people to use doesn't make economic sense](https://en.wikipedia.org/wiki/Economics_of_open_data), unless you can profit from that. 

The current landscape has a few problems:
- **Non Interoperability**. Data is isolated in multiples places and between different formats.
- **Data Loss**. Data is commonly stored in perishable hardware and formats.
- **Hard to Search**. Datasets indexing is difficult since [there are many standards](https://xkcd.com/927/).
- **No Collaboration**. No incentives exists for people to work on improving or curating datasets.

[Open Data can help organizations, scientist, and governments make better decisions](https://twitter.com/patrickc/status/1256987283141492736). Data is one of the best ways to learn about the world and [[Coordination | coordinate]] people.

Open protocols create open systems. Open code creates tools. **Open data creates open knowledge**. We need better tools, protocols, and mechanisms to improve the Open Data ecosystem. It should be easy to find, download, process, publish, and collaborate on open datasets.

Iterative improvements over public datasets would yield large amounts of value. Access to data gives people the opportunity to create new business and make better decisions. Open Source code has made a huge impact in the world. Let's make Open Data do the same!

### Why now?

We have cheaper storage, we have better compute, we have more data. We need to go one level up in the abstraction ladder. 

Instead of thinking of CSVs, let's think about datasets. Instead of running custom scripts, let's collaborate on useful transformations. Instead of just work with datasets, let's collaborate on datasets.

During the last few years, a Cambrian explosion of open source tools have emerged. There are new query engines (e.g: DuckDB, DataFusion, ...), execution frameworks (WASM), data standards (Arrow, Parquet, ...), and a growing set of open data marketplaces (HuggingFace Datasets). These trends have quick-started movements like [DeSci](https://ethereum.org/en/desci/) but we need more tooling around data.

Organizations like [Our World in Data](https://ourworldindata.org/) or [538](https://fivethirtyeight.com/) provide useful analysis but have to deal with _dataset management_. They end up building custom tools around their workflows. That works, but limits the potential of these datasets. In the end, there is no `data get OWID/daily-covid-cases`, no `data query "select * from 538/polls"` that could act as entry-point to discover datasets.

We could have a better ecosystem if we **collaborate on open standards**! So, lets move towards more composable, maintainable, and reproducible data.

## Design Goals

- **Easy**. It should be easy to create, curate and share datasets.
	- Data is useful only when used! We're not using most of humanity's open datasets much. That's not because they're not available but because they're hard to get.
	- All datasets can be represented as tabular datasets.
		- This will enable to run SQL (`select, groupbys, joins`) on top of them which might be the easier way to start collaborating.
- **Versioned and Modular**. Data and metadata (e.g: `relation`) should be [updated, forked and discussed](https://github.com/jbenet/data/blob/master/dev/designdoc.md#data-hashes-and-refs) as code in version controlled repositories.
	- Prime composability (e.g: [Arrow ecosystem](https://thenewstack.io/how-apache-arrow-is-changing-the-big-data-ecosystem/)) so tools/services can be swapped without affecting the end result. 
	- Provide a declarative way of defining the datasets schema and other meta-properties like _relations_ or _tests_.
	- Metadata is a first-class citizen.
	- Git based approach collaboration. Adopt and integrate with `git`  to reduce surface area. Revisions, tags, branches, issues, PRs, ... 
	- Support for non-dataset files in same place. Code, visualizations, pipelines, models, ...
- **Reproducible and Verifiable**. People should be able to trust the final datasets without having to recompute them from scratch. Datasets are declarative and immutable. They become [software defined assets](https://dagster.io/blog/software-defined-assets).
	- Thanks to immutability, you can move backwards in time and run transformations or queries on how the dataset was at a certain point in time.
- **Permissionless**. Anyone should be able to add/update/fix datasets or their metadata. GitHub style collaboration and curation.
- **Aligned Incentives**. Curators should have incentives to improve datasets. Data is messy after all, but a good set of incentives could make great datasets surface and reward contributors accordingly.
	- [Bounties](https://www.dolthub.com/bounties) could be created to reward people that adds useful but missing datasets.
	- Surfacing and creating great datasets should be rewarded.
	- Curating the data provides compounding benefits for the entire community!
- **Open Source and Decentralized**. Datasets should be stored in multiple places.
	- Don't create yet another standard. Provide a way for people to integrate current indexers. Work on _adapters_ for different datasets sources. Similar to:
		- [Foreign Data Wrappers in PostgreSQL](https://wiki.postgresql.org/wiki/Foreign_data_wrappers) 
		- [Trustfall](https://github.com/obi1kenobi/trustfall).
		- Open source data integration projects like [Airbyte](https://airbyte.com/). They can used to build open data connectors making possible to replicate something from `$RANDOM_SOURCE` (e.g: spreadsheets, Ethereum Blocks, URL, ...) to any destination.
	- Decentralized the computation (where data lives) and then cache copies of the results (or aggregations) in CDNs. Most queries require only reading a small amount of data and going to be similar.

## Modules

### Packaging
- **Distribution**. Decentralized. No central authority. Can work in a closed network.
- **Indexing**. Should be easy to list datasets matching a certain pattern or reading from a certain source. 
	- Datasets could be linked to a [[Open Data#Datafile | Datafile]] with description, default visualizations, WASM linked code...
	- One repository, one dataset.
- **Formatting**. Datasets should be saved and exposed in multiple formats (CSV, Parquet, ...). Could be done via WASM transformations or in the fly when pulling data. The package manager should be **format and storage agnostic**.
- **Social**. Allow users, organizations, stars, citations, attaching default visualizations (d3, [Vega](https://vega.github.io/), [Vegafusion](https://github.com/vegafusion/vegafusion/), and others), ...
	- Importing datasets. Making possible to `data fork user/data`, improve something and publish the resulting dataset back (via something like a PR).
	- Have issues and discussions close to the dataset.
- **Extensible**. Users could extend the package resource (e.g: [Time Series Tabular Package inherits from Tabular Package](https://specs.frictionlessdata.io/tabular-data-package/)) and add better support for more specific kinds of data (geographical).
	- Integrations could be built to ingest/publish data from other hubs (e.g: CKAN)

### Storage
- **Permanence**. Each [version](https://tech.datopian.com/versioning/) should be permanent and accessible.
- **Versioning**. Should be able to manage *diffs* and *incremental changes* in a smart way. E.g: only storing the new added rows or updated columns.
	- Should allow [automated harvesting of new data](https://tech.datopian.com/harvesting/) with sensors (external functions) or scheduled jobs. 
- **Smart**. Use appropriate protocols for storing the data. E.g: rows/columns shouldn't be duplicated if they don't change.
	- Think at the dataset level and not the file level.
	- Tabular data could be partitioned to make it easier for future retrieval.
- **Immutability**. Never remove historical data. Data should be append only.
	- Similar to how `git` deals with it. You could force the deletion of something in case that's needed, but not the default.
- **Flexible**. Allow centralized ([S3](https://twitter.com/quiltdata/status/1569447878212591618), GCS, ...) and decentralized (IPFS, Hypercore, Torrent, ...) layers.
	- As agnostic as possible, suppoting many types of data; tables, geospatial, images, ...
	- A dataset could have different formats. The protocol could do the transformation (e.g: CSV to Parquet, JSON to Arrow, ...) automatically and some checks at the data level to verify they contain the same information.
	- Datasets could be tagged from a library of types (e.g: `ip-adress`) and [conversion functions](https://github.com/jbenet/transformer) (`ip-to-country`). Given that the representation is common (Arrow), the transformations could be written in multiple languages.

### Transformations
- **Deterministic**. Packaged lambda style transformations (WASM/Docker).
	- For tabular data, starting with just SQL might be great.
	- Pyodite + DuckDB for transformations could cover a large area.
	- Datasets could be derived by importing other datasets and applying deterministic transformations in the `Datafile`. Similar to Docker containers. That file will carry [Metadata, Lineage and even some defaults (visualizations, code, ...)](https://handbook.datalad.org/en/latest/basics/101-127-yoda.html)
- **Declarative**. Everything should be defined as code. E.g: YAML files with the source datasets and the transformations. Similar to how Pachyderm/Kamu/Holium do.
	- E.g: The tool ends up orchestrating containers that read/write from the storage layer, Pachyderm style.
- **Environment agnostic**. Can be run locally and remotely. One machine or a cluster. Streaming or batch.
- **Templated**. Having a repository/market of open transformations could empower a bunch of use cases ready to plug in to datasets:
	- Detect outliers automatically on tabular data.
	- Resize images.
	- Normalize sound files.
	- Detect suspicions records like a categorical variable value that only appears one time while others values appear many times.
	- Enrich data smartly (Match and Augment pattern). If a matcher detects a date, the augmenter can add the day of week. If is something like a latitude and longitude, the augmenter adds country/city.
	- [Templated validations to make sure datasets conform to certain standards](https://framework.frictionlessdata.io/docs/checks/baseline.html).

### Visualizations
- **Sane Defaults**. Suggest basic charts (bars, lines, time series, clustering). Multiple [views](https://tech.datopian.com/views/).
- **Exploratory**. Allow drill downs and customization. Offer a [simple way](https://lite.datasette.io/) for people to query/explore the data.
- **Dynamic**. Use only the data you need. No need to pull 150GB. 

## Extra Thoughts
- [Making a SQL interface](https://twitter.com/josephjacks_/status/1492931290416365568) to query and mix these datasets could be a great step forward since it'll enable tooling like `dbt` to be used on top of it. **Data-as-code**.
	- SQL should be enough for unlocking most part of the potential. E.g: joining Wikipedia data to Our World In Data.
	- There are some [web3 DAOs already using `dbt` to improve data models](https://github.com/MetricsDAO/harmony_dbt/tree/main/models/metrics)!

## Open Questions
- What would be a great use case to start with?
	- Why should people use this vs doing their own thing?
- How can datasets be indexed?
- How can we stream new data reliably? E.g: some datasets like Ethereum `blocks` are not static. 
- Is it possible to [mount large amount of data](https://rclone.org/commands/rclone_mount/) ([FUSE](https://github.com/datalad/datalad-fuse)) from a remote source and get it dynamically as needed? 
- Can new table formats play efficiently with IPFS?
	- E.g: Running [`delta-rs`](https://github.com/delta-io/delta-rs) on top of IPFS.
	- Parquet could be a great fit if we figure out how to deterministically serialize it and integrate with IPLD.
- How to work with private data?
	- Homomorphic encription?

### Related Projects

#### Computation
- [Kamu](https://www.kamu.dev/).
- [Bacalhau](https://www.bacalhau.org/).
- [Holium](https://docs.holium.org/). An open source protocol dedicated to the management of data connected through transformations. Similar to Pachyderm but using WASM and IPFS.
- [Ocean Protocol](https://oceanprotocol.com/technology/compute-to-data).
- [The Graph](https://thegraph.com/).
- [Trino](https://trino.io/).

#### Data Package Managers
- [Qri](https://qri.io/). An evolution of the classical open portals that added [[Decentralized Protocols]] (IPFS) and computing on top of the data. Sadly, [it came to an end early in 2022](https://qri.io/winding_down).
- [Datalad](https://www.datalad.org/). [Extended to IPFS](https://kinshukk.github.io/posts/gsoc-summary-and-future-thoughts/). Is a [great candidate](https://archive.fosdem.org/2020/schedule/event/open_research_datalad/)!
- [Huggingface Datasets](https://huggingface.co/docs/datasets)
- [Frictionless Data](https://frictionlessdata.io/projects/#software-and-standards)
- [LakeFS](https://lakefs.io/blog/git-for-data/). More like Git for Data.
- [Quilt](https://github.com/quiltdata/quilt).
- [Datasette](https://lite.datasette.io/).
- [Algovera Metahub](https://github.com/AlgoveraAI/metahub).
- [DVC](https://github.com/iterative/dvc).
- [XVC](https://github.com/iesahin/xvc).
- [Xetdata](https://xetdata.com/).
- [Dud](https://github.com/kevin-hanselman/dud).
- [Splitgraph](https://github.com/splitgraph/sgr).
- [Deep Lake](https://github.com/activeloopai/deeplake).
- [Dim](https://github.com/c-3lab/dim).
- [Dolt](https://docs.dolthub.com/) is another interesting project in the space with some awesome data structures. They also [do data bounties](https://www.dolthub.com/repositories/dolthub/us-businesses)!

## Open Datasets
- [Wikipedia](https://dumps.wikimedia.org/).
- [Github](https://www.gharchive.org/).
- [HackerNews](https://console.cloud.google.com/bigquery?p=bigquery-public-data&d=hacker_news).
- [Reddit](https://pushshift.io/).
- [Blockchain](https://github.com/blockchain-etl).
- [Our World In Data](https://github.com/owid/owid-datasets).
- [Fivethirtyeight](https://data.fivethirtyeight.com/).
- [ProPublica](https://www.propublica.org/datastore/).
- [World Bank](https://data.worldbank.org/indicator).

### Indexes
- [Google Dataset Search](https://datasetsearch.research.google.com/).
- [BigQuery Public Data](https://cloud.google.com/bigquery/public-data).
- [Kaggle Datasets](https://www.kaggle.com/datasets).
- [Datahub](https://datahub.io/awesome). By [Datopian](https://tech.datopian.com/), makers of CKAN.
- [HuggingFace Datasets](https://huggingface.co/datasets).
- [Data World](https://data.world/datasets/open-data).
- [DoltHub](https://www.dolthub.com/discover).
- [Socrata](https://dev.socrata.com/)
- [Nasdaq](https://data.nasdaq.com/search).
- [Zenodo](https://zenodo.org/search?page=1&size=20&q=&file_type=csv&type=dataset&sort=mostviewed).
- [Splitgraph](https://www.splitgraph.com/explore).
- [Awesome Public Datasets](https://github.com/awesomedata/awesome-public-datasets).
- [Data Packaged Core Datasets](https://github.com/datasets/)
- [Internet Archive Dataset Collection](https://archive.org/details/datasets).
- [AWS Open Data Registry](https://registry.opendata.aws/).
- [Datamarket](https://en.datamarket.es/).
- [Open Data Stack Exchange](https://opendata.stackexchange.com/).
- [IPFS Datasets](https://awesome.ipfs.io/datasets/).
- [Datasets Subreddit](https://www.reddit.com/r/datasets/). [Open Data Subreddit](https://www.reddit.com/r/opendata/).
- [Academic Torrents Datasets](https://academictorrents.com/browse.php).
- [Open Data Inception](https://opendatainception.io/).
- [Victoriano's Data Sources](https://victorianoi.notion.site/Data-Sources-79b28912c6d941af99e6ef102c578fa0).

## Open Source Web Data IDE

After playing with Rill Developed, DuckDB, Vega, WASM, and many more tools recently, I think we have all the pieces for an awesome web based BI-ish tool. These are the things I'd love to have:

- Let me add local and remote datasets. Not just one as I'd like to join them later.
- Let me plot it using Vega-Lite. Guide me through alternatives like [Vega's Voyager2](https://vega.github.io/voyager2/) does.
- Let me transform them with SQL ([DuckDB](https://duckdb.org/)) and Python ([JupyterLite](https://jupyterlite.readthedocs.io/en/latest/)).
- Let me save the plots in a separate space and give me a shareable URL encoded link.
	- Local datasets could be shared using something like [Magic Wormhole](https://github.com/magic-wormhole/magic-wormhole) or a temporal storage service.
- It could also have "smart" data checks. Similar to [deepchecks](https://github.com/deepchecks/deepchecks) alerting for anomalies, outliers, noisy variables, ...
- Given a large amount of [[Open Data]]. It could offer a way for people to upload their datasets [and get them augmented](https://subsets.io/).
	- E.g: Upload a CSV with year and country and the tool could suggest GDP per Capita or population.

Could be an awesome front-end to explore [[Open Data]].

### Interesting Projects
- [Rill Developer](https://github.com/rilldata/rill-developer).
- [Datastation](https://app.datastation.multiprocess.io/).

#### Datafile
Inspired by [ODF](https://docs.kamu.dev/odf/spec/).

```YAML
name: "My Dataset"
owner: "My Org"
kind: "dataset"
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