# Open Data

> People should be able to collaborate on Open Data the same way we collaborate on Open Source code.

## Motivation
[Open data is a public good](https://en.wikipedia.org/wiki/Open_data#Open_Data_as_commons). As a result, is an area where individual [[incentives]] are not aligned with collective ones. As an organization or research group, [spending time curating and maintaining datasets for other people to use doesn't make sense](https://en.wikipedia.org/wiki/Economics_of_open_data) unless that's how you make money. Data end up siloed in multiples places and formats. Making interoperability a dream. 

Data is usually centralized and perishable. Even tabular datasets are hard to index and there are no incentives to collaborate on improving them.

[Open Data can help organizations, scientist, and governments make better decisions](https://twitter.com/patrickc/status/1256987283141492736). Data is the best way to learn about the world and [[Coordination | coordinate]] people.

Open protocols create open systems. Open code creates tools. Open data creates open knowledge. **We need better tools, protocols, and mechanisms to improve the Open Data ecosystem**.

Iterative improvements over public datasets could yield large amounts of value. Access to data gives people the opportunity to create new business and make better decisions. Open Source code has made a huge impact in the world. Open Data could do the same!

## Ecosystem Principles
- **Easy**. For people to use it, it should be easy to create, curate and share datasets.
- **Versioned and Modular**. Data and metadata (e.g: `relation`) should be updated, forked and discussed as code in version controlled repositories.
	- Prime composability so tools/services can be swapped without affecting the end result.
	- This provided a declarative way of defining the datasets schema and other meta properties like _relations_ or _tests_.
	- Pachyderm style transformations. E.g: orchestrating containers that read/write on IPFS.
- **Reproducible and Verifiable**. People should be able to trust the final datasets without having to recompute them from scratch. As datasets are declarative, they are [software defined assets](https://dagster.io/blog/software-defined-assets).
- **Permissionless**. Anyone should be able to add/update/fix datasets and metadata. GitHub style collaboration. 
- **Aligned Incentives**. Curators should have incentives to improve datasets and metadata. Data is messy after all, but a good set of incentives could make great datasets surface and reward contributors accordingly.
	- Curating the data provides compounding benefits for the entire community!
	- Surfacing and creating great datasets should be rewarded.
- **Open Source and Decentralized**. Datasets should be stored in a decentralized way using something like IPFS.  This allow the data to be used on tool like [DuckDB WASM Shell](https://shell.duckdb.org/).

## Modules

### Packaging
- **Distribution**. Decentralized way. No central authority. Could work in a closed network too! Permissions management would be also decentralized.
- **Indexing**. Should be easy to list datasets matching a certain pattern or reading from a certain source. Datasets could be linked to a `Datafile` with description, default visualizations, WASM linked code...
- **Formatting**. Datasets should be saved and exposed in multiple formats (CSV, Parquet, ...). Could be done via WASM transformations.
- **Social**. Stars, users, citations, attaching default visualizations (d3, [Vega](https://vega.github.io/), [Vegafusion](https://github.com/vegafusion/vegafusion/), and others), ...
	- Importing datasets. Making possible to `data fork user/data`, improve something and publish the resulting dataset back.

### Storage
- **Permanence**. Each version should be accessible and permanent.
- **Versioning**. Should be able to manage diffs and incremental changes in a smart way. E.g: only storing the new rows or columns.
- **Smart**. Use appropriate protocols for storing the data. E.g: rows/columns shouldn't be duplicated if they don't change. 
	- Tabular data could be partitioned to make it easier for future retrieval. 
- **Inmutability**. Data should be append only. 
- **Flexible**. Allow centralized (S3, GCS, ...) and decentralized (IPFS, Hypercore, Torrent, ...).
	- Support many types of data. Tables, Geospatial, Images, ...
	- A dataset could have different formats. The protocol could do some checks at the data level to verify they contain the same information.

### Transformations
- **Deterministic**. Packaged Lambda transformations (WASM/Docker). 
	- For tabular data, starting with just SQL might be great. 
	- Pyodite + DuckDB for transformations could cover a large area.
- **Declarative** Everything should be defined as code. E.g: YAML files with the source datasets and the transformations. Similar to how Pachyderm/Kamu/Holium do.
- **Environment agnostic**. Can be run locally and remotely. One machine or a cluster. Streaming or batch.
- **Templated**. Having a repository/market of open transformations could empower a bunch of use cases ready to plug in to datasets:
	- Detect outliers automatically.
	- Detect suspicions records like a categorical variable value that only appears one time while others values appear many times.
	- Enrich data smartly (matcher + augmenter). If it detects a date, add the day of wee. If it detects latitude and longitude, adds country/city.

### Visualizations
- **Defaults**. Suggest basic charts (bars, lines, time series, clustering).
- **Exploratory**. Allow drill downs and customization.

## Extra Thoughts
- There are already open source projects like [Airbyte](https://airbyte.com/) that could be used to build open data connectors. It would make possible replicating something from `$RANDOM_SOURCE` (like the Ethereum blockchain) to any destination (like IPFS).
- With a common standard for the metadata, datasets could be indexed with a computation framework on top of IPFS.
- Querying could also be archived with such computation framework. There are also some databases ([Ceramic](https://ceramic.network/), [Crust](https://www.crust.network/), [Textile Threads](https://github.com/textileio/go-threads)) that work on IPFS but they don't support this use case.
- [Making a SQL interface](https://twitter.com/josephjacks_/status/1492931290416365568) to query and mix these datasets could be a great step forward since it'll enable tooling like `dbt` to be used on top of it. **Data-as-code**.
	- SQL should be enough for unlocking most part of the potential. E.g: joining Wikipedia data to Our World In Data.
	- There are some [web3 DAOs already using `dbt` to improve data models](https://github.com/MetricsDAO/harmony_dbt/tree/main/models/metrics)!

## Open Questions
- Can new table formats play efficiently with IPFS?
	- E.g: Running [`delta-rs`](https://github.com/delta-io/delta-rs) on top of IPFS.
	- That'd mean Delta/Iceberg tables have an append only changelog that IPLD understand. Same for the storage layer. Updates should be handled transparently and efficiently.
- Is it possible to run Spark/Trino on top of IPFS?
- What would be the ideal tabular format for IPFS? Parquet? Iceberg? ...

### Related Projects
- [Kamu](https://www.kamu.dev/).
- [Algovera](https://www.algovera.ai/).
- [Qri](https://qri.io/). An evolution of the classical open portals that added [[Decentralized Protocols]] (IPFS) and computing on top of the data. Sadly, [it came to an end early in 2022](https://qri.io/winding_down). It's the closest thing to the ideal I shared earlier I'm aware of.
- [Datalad](https://www.datalad.org/). [Extended to IPFS](https://kinshukk.github.io/posts/gsoc-summary-and-future-thoughts/).
- [Huggingface Datasets](https://huggingface.co/docs/datasets)
- [Holium](https://docs.holium.org/). An open source protocol dedicated to the management of data connected through transformations. Similar to Pachyderm but using WASM and IPFS.
- [Ocean Protocol](https://oceanprotocol.com/technology/compute-to-data).
- [dbhub](https://dbhub.io/).
- [Dolt](https://docs.dolthub.com/) is another interesting project in the space with some awesome data structures. They also [do data bounties](https://www.dolthub.com/repositories/dolthub/us-businesses)!
- [Quilt](https://github.com/quiltdata/quilt).
- [DVC](https://github.com/iterative/dvc).
- [Minerva](https://github.com/bdchain/Minerva).
- [The Graph](https://thegraph.com/).
- [Akash](https://akash.network/).
- [Datasette](https://lite.datasette.io/).
- [Trino](https://trino.io/) is a distributed query engine for data. It could work on top of IPFS if it supported it.
- [DuckDB](https://duckdb.org/) WASM client could be used with IPFS as the storage layer for a [decentralized and open data warehouse](https://github.com/davidgasquez/datadex).
- [Kylin](https://wiki.kylin.network/getting-started/project-details/project-architecture/data-analytics).
- [IPFS Compute](https://github.com/adlrocha/ipfs-compute).
- [Spice.ai](https://spiceai.io/).

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
- [Nasdaq](https://data.nasdaq.com/search).
- [Zenodo](https://zenodo.org/search?page=1&size=20&q=&file_type=csv&type=dataset&sort=mostviewed).
- [Awesome Public Datasets](https://github.com/awesomedata/awesome-public-datasets).
- [Internet Archive Dataset Collection](https://archive.org/details/datasets).
- [AWS Open Data Registry](https://registry.opendata.aws/).
- [Datamarket](https://en.datamarket.es/).
- [Open Data Stack Exchange](https://opendata.stackexchange.com/).
- [IPFS Datasets](https://awesome.ipfs.io/datasets/).
- [Datasets Subreddit](https://www.reddit.com/r/datasets/). [Open Data Subreddit](https://www.reddit.com/r/opendata/).
- [Datahub](https://datahub.io/awesome).
- [Academic Torrents Datasets](https://academictorrents.com/browse.php).
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