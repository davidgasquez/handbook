# Open Data

_Make Open Data compatible with the Modern Data Ecosystem_.

## Motivation

[Open Data is a public good](https://en.wikipedia.org/wiki/Open_data#Open_Data_as_commons). As a result, individual [[incentives]] are not aligned with collective ones.

As an organization or research group, [spending time curating and maintaining datasets for other people to use doesn't make economic sense](https://en.wikipedia.org/wiki/Economics_of_open_data), unless you can profit from that. When a scientist publishes a paper, they care about the paper itself. They're incentivized to. The data is usually an afterthought.

Combining data from different sources requires the user to reconcile the differences in schemas, formats, assumptions, and more. This [data wrangling is time consuming, tedious and needs to be repeated by every user of the data](https://arxiv.org/pdf/2309.13054).

The Open Data landscape has a few problems:

- **Non Interoperability**. Data is isolated in multiples places and between different formats.
- **Hard to Use**. Good datasets are hard to use as indexing is difficult and [many standards](https://xkcd.com/927/) compete. However, none of the indexers specify how the data is to be formatted, enforce any standardization, ... Users must still perform traditional forms of data merging, cleaning, and standardization.
- **No Collaboration**. No incentives exists for people to work on improving or curating datasets.
- **No Versioning**. Datasets disappear or change without notice. It's hard to know what changed and when. Losing data doesn't just inconvenience a few researchers. It actively hinders scientific progress.
- **Economic Impact**. The inefficiency in data access and preparation represents a significant economic cost. E.g: thousands of Data Analysts spending 80% of their time preparing data for analysis, this represents billions in wasted economic opportunity.

[Open Data can help organizations, scientist, and governments make better decisions](https://twitter.com/patrickc/status/1256987283141492736). It drives innovation and decision-making across virtually every industry and sector Data is one of the best ways to learn about the world and [[Coordination|coordinate]] people. Imagine if, every time you used a library, you had to find the original developer and hope they had a copy. It would be absurd. Yet that's essentially what we're asking scientists to do. [Science is missing a crucial data packaging/publishing/sharing network](https://hackmd.io/wKKm4cIDR6a9kYwZ3srVFg?view). [Friction in data sharing hampers collaboration and limits informed decision making](https://docs.google.com/document/d/1iTl7YWfTAzp8zNXRs01RAIWCP-pRJwQfDg8lsD0TDCM/edit?tab=t.0).

There are three big areas where people work on open data; at the government level covering thousands of datasets (CKAN, Socrata, …), at the scientific level (university level), and at the individual level where folks who are passionate about a topic publish a few datasets about it. This results on lots of datasets that are disconnected and still requires you to scrape, clean, and join it from all the heterogeneus sources to answer interesting questions. [One of the big ways that data becomes useful is when it is tied to other data](https://x.com/auren/status/1139594779895844865). **Data is only as useful as the questions it can help answer**. Joining, linking, and graphing datasets together allows one to ask more and different kinds of questions.

Open protocols create open systems. Open code creates tools. **Open data creates open knowledge**. We need better tools, protocols, and mechanisms to improve the Open Data ecosystem. It should be easy to find, download, process, publish, and collaborate on open datasets.

Iterative improvements over public datasets yield large amounts of value ([check how Dune did it with blockchain data](https://dune.com/blog/the-community-data-platform))¹. Access to data gives people the opportunity to create new business and make better decisions. Data is vital to understanding the world and improving public welfare. Metcalfe's Law applies to data too. The more connected a dataset is to other data elements, the more valuable it is.

Open Source code has made a huge impact in the world. Let's make Open Data do the same! Open data is, essentially, public infrastructure (similar to roads, bridges, or the internet). Let's make it possible for [anyone to fork and re-publish fixed, cleaned, reformatted datasets as easily as we do the same things with code](https://juan.benet.ai/blog/2014-02-21-data-management-problems/).

This document is a collection of ideas and principles to make Open Data more accessible, maintainable, and useful. Also, recognizing that a lot of people are already working on this, there are some amazing datasets, tools, and organizations out there, and, that Open Data is a people problem at 80%. This document is biased towards the technical side of things, as I think that's where I can contribute the most. I believe we can do much more with the available data.

### Why Now?

We have better and cheaper infrastructure. That includes things like faster storage, better compute, and, larger amounts of data. We need to improve our data workflows now. How does a world where people collaborate on datasets look like? [The data is there. We just need to use it](https://twitter.com/auren/status/1509340748054945794).

**[The best thing to do with your data will be thought by someone else](https://youtu.be/_agrBn50kyE?t=925)**.

During the last few years, a large number of new data and open source tools have emerged. There are new query engines (e.g: DuckDB, DataFusion, ...), execution frameworks (WASM), data standards (Arrow, Parquet, ...), and a growing set of open data marketplaces (Datahub, HuggingFace Datasets, Kaggle Datasets). "Small data" deserves more tooling and people working on it.

These trends are already making its way towards movements like [DeSci](https://ethereum.org/en/desci/) or smaller projects like [Py-Code Datasets](https://py-code.org/datasets). But, we still need more tooling around data to improve interoperability as much as possible. Lots of companies have figured out how to make the most of their datasets. **We should use similar tooling and approaches companies are using to manage the open datasets that surrounds us**. A sort of [Data Operating system](https://data-operating-system.com/).

One of the biggest problem in open data today is the fact that organizations treat data portals as graveyards where data goes to die. Keeping these datasets up to date is core concern (data has marginal temporal value), alongside using the data for operational purposes and showcasing it to the public.

Open data is hard to work with because of the overwhelming variety of formats and the engineering cost of integrating them. Data wrangling is a perpetual maintenance commitment, taking a lot of ongoing attention and resources. [Better and modern data tooling can reduce these costs](https://github.com/catalyst-cooperative/pudl).

Organizations like [Our World in Data](https://ourworldindata.org/) or [538](https://fivethirtyeight.com/) provide useful analysis but have to deal with _dataset management_, spending most of their time building custom tools around their workflows. That works, but limits the potential of these datasets. Sadly, there is no `data get OWID/daily-covid-cases` or `data query "select * from 538/polls"` that could act as a quick and easy entry-point to explore datasets.

We could have a better data ecosystem if we **collaborate on open standards**! So, lets move towards more [composable](https://voltrondata.com/codex), maintainable, and reproducible open data.

¹ Blockchain data might be a great place to start building on these ideas as the data there is open, immutable, and useful.

## Design Principles

- **Easy**. Create, curate and [share](https://datamgmtinedresearch.com/share) datasets without friction.
  - Frictionless: Data is useful only when used! Right now, we're not using most of humanity's datasets. That's not because they're not available but because they're hard to get. They're isolated in different places and multiple formats.
  - Pragmatism: published data is better than almost published one because something is missing. Publishing datasets to the web is too hard now and there are few purpose-built tools that help.
  - Familiar Workflow: [people won't change their workflow to use a new tool](https://xethub.com/blog/shutting-down-xethub-learnings-and-takeaways). They will use something if it fits into their existing workflow.
- **Versioned and Modular**. Data and metadata (e.g: `relation`) should be [updated, forked and discussed](https://github.com/jbenet/data/blob/master/dev/designdoc.md#data-hashes-and-refs) as code in version controlled repositories.
  - Prime composability (e.g: [Arrow ecosystem](https://thenewstack.io/how-apache-arrow-is-changing-the-big-data-ecosystem/)) so tools/services can be swapped.
  - Metadata as a first-class citizen. Even if minimal and automated.
  - Git based approach collaboration. Adopt and integrate with `git` and GitHub to reduce surface area. Build tooling to adapt revisions, tags, branches, issues, PRs to datasets.
    - Portals are a GitHub repository with scripts to collect data from various sources, clean it, and join it, and publish useful datasets and artifacts for that community. Ideally, they are also simple to get started with and expose the best practices in data engineering for curating and transforming data.
  - Provide a declarative way of defining the datasets schema and other meta-properties like _relations_ or _tests/checks_.
  - Support for integrating non-dataset files. A dataset could be linked to code, visualizations, pipelines, models, reports, ...
- **[Reproducible](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1003285) and Verifiable**. People should be able to trust the final datasets without having to recompute everything from scratch. In "reality", events are immutable, data should be too. [Make datasets the center of the tooling](https://dagster.io/blog/software-defined-assets).
  - With immutability and content addressing, you can move backwards in time and run transformations or queries on how the dataset was at a certain point in time.
  - [Datasets are books, not houses](https://medium.com/qri-io/datasets-are-books-not-houses-760bd4736229)!
- **Permissionless**. Anyone should be able to add/update/fix datasets or their metadata. GitHub style collaboration, curation, and composability. On data.
- **Aligned Incentives**. Curators should have incentives to improve datasets. Data is messy after all, but a good set of incentives could make great datasets surface and reward contributors accordingly (e.g: [number of contributors to Dune](https://github.com/duneanalytics/spellbook/commits/main)).
  - [Bounties](http://web.archive.org/web/20230620160338/https://www.dolthub.com/bounties) could be created to reward people that adds useful but missing datasets.
  - Surfacing and creating great datasets could be rewarded (retroactively or with bounties).
  - Curating the data provides compounding benefits for the entire community!
  - Rewarding the datasets creators according to the usefulness. E.g: [CommonCrawl built an amazing repository](https://commoncrawl.org/) that OpenAI has used for their GPTs LLMs. Not sure how well CommonCrawl was compensated.
  - Governments needs to be forced to use their open data. This should create a feedback loop and have them improve the quality and freshness of the data. That forces to keep up on the quality and freshness.
- **Open Source and [Decentralized](https://github.com/orgs/datonic/discussions/42)**. Datasets should be stored in multiple places.
  - Don't create yet another standard. Provide a way for people to integrate current indexers. Work on _adapters_ for different datasets sources. Similar to:
    - [Foreign Data Wrappers in PostgreSQL](https://wiki.postgresql.org/wiki/Foreign_data_wrappers)
    - [Trustfall](https://github.com/obi1kenobi/trustfall).
    - Open source data integration projects like [Airbyte](https://airbyte.com/). They can used to build open data connectors making possible to replicate something from `$RANDOM_SOURCE` (e.g: spreadsheets, Ethereum Blocks, URL, ...) to any destination.
    - Adapters are created by the community so data becomes connected.
    - Having better data will help create better and more accessible AI models ([people are working on this](https://github.com/togethercomputer/OpenDataHub)).
  - Integrate with the modern data stack to avoid reinventing the wheel and increase surface of the required skill sets.
  - Decentralized the computation (where data lives) and then cache immutable and static copies of the results (or aggregations) in CDNs (IPFS, R2, Torrent). Most end user queries require only reading a small amount of data!
- [Other Principles from the Indie Web](https://indieweb.org/principles) like have fun!

## Modules

### Packaging

Package managers have been hailed among the most important innovations Linux brought to the computing industry. The activities of both publishers and users of datasets resemble those of authors and users of software packages.

- **Distribution**. Decentralized. No central authority. Can work in closed and private networks. Cache/CDN friendly.
  - A data package is an URI ([like in Deno](https://deno.land/manual@v1.31.2/examples/manage_dependencies)). You can import from an URL (`data add example.com/dataset.yml` or `data add example.com/hub_curated_datasets.yml`).
  - As [Rufus Pollock puts it](https://datahub.io/docs/dms/notebook#go-modules-and-dependency-management-re-data-package-management-2020-05-16-rufuspollock), Keep it as simple as possible. Store the table location and schema and get me the data on the hard disk (or my browser) fast.
  - [Bootstrap a package registry](https://antonz.org/writing-package-manager/). E.g: a GitHub repository with lots of known `datapackages` that acts as fallback and quick way to get started with the tool (`data list` returns a bunch of known open datasets and integrates with platforms like Huggingface).
  - Each package has a [persistent identifier](https://datacite.org/what-we-do/).
- **Indexing**. Should be easy to list datasets matching a certain pattern or reading from a certain source.
  - Datasets are linked to their metadata.
  - One Git repository should match one portal/catalog/hub where related datasets are linked (not islands). Could also be a dataset. The main thing is for code and data to live together. Each Data Portal should be comparable to a website, and may have a specific topical focus (unify on a central theme).
  - To avoid yet another open dataset portal, build adapters to integrate with other indexes.
    - For example, integrate all [Hugging Face datasets](https://huggingface.co/docs/datasets/index) by making an scheduled job that builds a Frictionless Catalog (bunch of `datapackage.yml`s pointing to their parquet files).
    - [Expose a JSON-LD so Google Dataset Search can index it](https://developers.google.com/search/docs/appearance/structured-data/dataset).
  - Data assets should be Findable, Accessible, Interoperable, and Reproducible. [FAIR](https://www.go-fair.org/fair-principles/).
  - Finding the right dataset to answer a question is difficult. Good metadata search is essential.
  - Have one profile per user/organization with multiple data products (e.g: how GitHub has one profile per user with multiple repositories, or Hugging Face has one profile per user with multiple datasets).
- **Formatting**. Datasets are saved and exposed in multiple formats (CSV, Parquet, ...). Could be done in the backend, or in the client when pulling data (WASM). The package manager should be **format and storage agnostic**. Give me the dataset with id `xyz` as a CSV in this folder.
- **Social**. Allow users, organizations, stars, citations, attaching default visualizations (d3, [Vega](https://vega.github.io/), [Vegafusion](https://github.com/vegafusion/vegafusion/), and others), ...
  - Importing datasets. Making possible to `data fork user/data`, improve something and publish the resulting dataset back (via something like a PR).
  - Have issues and discussions close to the dataset.
  - Support for different licensing models beyond "fully open" (e.g., attribution, non-commercial).
  - Linking data to other data makes all the data more valuable.
  - Default protocol or social network for sharing datasets (similar to how email or RSS feeds work).
- **Extensible**. Users could extend the package resource (e.g: [Time Series Tabular Package inherits from Tabular Package](https://specs.frictionlessdata.io/tabular-data-package/)) and add better support for more specific kinds of data (geographical).
  - Build integrations to ingest and publish data in other hubs (e.g: CKAN, HuggingFace, ...).
  - Any enforcement will bake in assumptions that won't be useful for everyone.

### Storage and Serialization

- **Permanence**. Each [version](https://tech.datopian.com/versioning/) should be permanent and accessible (look at `git`, `IPFS`, `dolt`, ...).
- **Versioning**. Should be able to manage _diffs_ and _incremental changes_ in a smart way. E.g: only storing the new added rows or updated columns.
  - Should allow [automated harvesting of new data](https://tech.datopian.com/harvesting/) with sensors (external functions) or scheduled jobs.
  - Each version is referenced by a hash. Git style.
  - Each version is linked to the code that produced it.
- **Smart**. Use appropriate protocols for storing the data. E.g: rows/columns shouldn't be duplicated if they don't change.
  - Think at the dataset level and not the file level.
  - Tabular data could be partitioned to make it easier for future retrieval.
  - Implement [common column standards](https://docs.google.com/document/d/1iTl7YWfTAzp8zNXRs01RAIWCP-pRJwQfDg8lsD0TDCM/edit?tab=t.0) (e.g: `country_code`, `date`, ...) that allow for data validation and standardization across datasets. These also help with interoperability / integration.
    - We can't cooperate on global issues if we can't agree on how to refer to things!
  - Use standardized identifiers and aggregation levels to ensure data quality and compatibility.
- **Immutability**. Never remove historical data. Data should be append only.
  - Many public data sources issue restatements or revisions. The protocol should be able to handle this.
  - [Higher resolution is more valuable than lower resolution](https://www.linkedin.com/pulse/re-framing-open-data-john-weigelt/). Publish immutable data and then compute the lower resolution data from it.
  - Similar to how `git` deals with it. You _could_ force the deletion of something in case that's needed, but that's not the default behavior.
- **Flexible**. Allow arbitrary backends. Both centralized ([S3](https://twitter.com/quiltdata/status/1569447878212591618), GCS, ...) and decentralized (IPFS, Hypercore, Torrent, ...) layers.
  - As agnostic as possible, supporting many types of data; tables, geospatial, images, ...
  - Can all datasets can be represented as tabular datasets? This will enable to run SQL (`select, groupbys, joins`) on top of them which might be the easier way to start collaborating.
  - A dataset could have different formats derived from a common one. Build converters between formats relying on the Apache Arrow in memory standard format. This is similar to how Pandoc and LLVM work! The protocol could do the transformation (e.g: CSV to Parquet, JSON to Arrow, ...) automagically and run some checks at the data level to verify they contain the same information.
  - Datasets could be tagged from a library of types (e.g: `ip-adress`) and [conversion functions](https://github.com/jbenet/transformer) (`ip-to-country`). Given that the representation is common (Arrow), the transformations could be written in multiple languages.

### Transformations

- **Deterministic**. Packaged lambda style transformations (WASM/Docker).
  - For tabular data, starting with just SQL might be great.
  - Pyodite + DuckDB for transformations could cover a large area.
  - Datasets could be derived by importing other datasets and applying deterministic transformations. Similar to Docker containers, [Splitfiles](https://github.com/splitgraph/sgr#build-and-query-versioned-reproducible-datasets), and Ollama files. That file will carry extensible and flexible [Metadata, Lineage and even some defaults (visualizations, code, ...)](https://handbook.datalad.org/en/latest/basics/101-127-yoda.html)
    - Standard join keys are the most valuable ways to link data together.
- **Declarative**. Transformations should be defined as code and be idempotent. Similar to how Pachyderm/Kamu/Holium work.
  - E.g: The transformation tool ends up orchestrating containers/functions that read/write from the storage layer, Pachyderm style.
- **Environment agnostic**. Can be run locally and remotely. One machine or a cluster. Streaming or batch.
- **Templated**. Having a repository/market of open transformations could empower a bunch of use cases ready to plug in to datasets:
  - Detect outliers automatically on tabular data.
  - Resize images.
  - Normalize sound files.
  - Built-in mechanisms for handling sensitive data (e.g., anonymization, pseudonymization).
  - Detect suspicions records like a categorical variable value that only appears one time while others values appear many times.
  - Enrich data smartly (Match and Augment pattern). If a matcher detects a date, the augmenter can add the day of week. If is something like a latitude and longitude, the augmenter adds country/city. [Some tools do this with closed source data](https://www.getcensus.com/blog/census-enrichment-third-party-data-enrichment-now-in-your-warehouse).
  - [Templated validations to make sure datasets conform to certain standards](https://framework.frictionlessdata.io/docs/checks/baseline.html).

### Consumption

- **Accessible**. Datasets are **files**. Datasets are static assets living somewhere. Don't get in the middle with libraries, gated databases or [obscure licenses](https://www.heltweg.org/posts/how-to-make-sure-no-one-cares-about-your-open-data/). Keep in mind right to exit and decentralization.
- **Documentation**. Surface derived work (e.g: reports, other datasets, ...) and not only the raw data with minimal metadata.
- **Embedded Visualizations**. Know what's in there before downloading it.
  - **Sane Defaults**. Suggest basic charts (bars, lines, time series, clustering). Multiple [views](https://tech.datopian.com/views/).
  - **Exploratory**. Allow drill downs and customization. Offer a [simple way](https://lite.datasette.io/) for people to query/explore the data.
  - **Dynamic**. Use only the data you need. No need to pull 150GB.
- **Default APIs**. For some datasets, allowing REST API / GraphQL endpoints might be useful. Same with providing an SQL interface.
  - Users should be able to clone public datasets with a single CLI command.
  - Installing datasets could be mounting them from in a virtual filesystem (FUSE) and supporting random access (e.g: HTTP Range requests).
- **Don't break history**. If a dataset is updated, the [old versions should still be accessible](https://www.heltweg.org/posts/how-to-make-sure-no-one-cares-about-your-open-data/).
  - Make sure the datasets are there for the long run. This might take different forms (using a domain name, IPFS, ...).
- **Subscribable**. Datasets are not just derived from upstream data, they should actually be updated every time the upstream data is updated (e.g: recomputing a metric of wildfire risk whenever new satellite imagery becomes available).
- **Dual Role Support**. Recognize that data providers are often data users and vice versa, similar to how GitHub understands that code writers are also code consumers. Design interfaces and tools that support this dual role effectively.
- **Data Product**. A data product is a collection of data created explicitly to be used by someone else. Incentivize data products as they are the atomic unit of consumption for data.

## Frequently Asked Questions

> Please [reach out](https://davidgasquez.com) if you want to chat about these ideas or ask more questions.

### 1. What would be a great use case to start with?

I'd say [chain related data](https://davidgasquez.github.io/blockchain-data-pipelines/). Is open and people are eager to get their hands on it. I'm [working on that area](https://davidgasquez.github.io/gitcoin-data/), so I might be biased.

### 2. Why should people use this instead of doing their own thing?

[If everybody could converge to it, e.g: _"datapackage.json_" as a metadata and schema description standard, then, an ecosystem of utilities and libraries for processing data would take advantage of it](https://news.ycombinator.com/item?id=15346836).

### 3. What is the incentive for people to adopt it?

I wonder if there are ways to use novel mechanisms (e.g: DAOs) to incentive people? Also, companies like [Golden](https://golden.com/) and [index.as](https://index.as/) are doing interesting work on monetizing data curation.

### 4. How can LLMs help "building bridges"?

LLMs could infer schema, types, and generate some metadata for us. [[Large Language Models|LLMs can parse unstructured data (CSV) and also generate structure from any data source (scrapping websites)]] making it easy to [create datasets from random sources](https://tomcritchlow.com/2021/03/29/open-scraping-database/).

They're definitely blurring the line between structured and unstructured data too. Imagine pointing a LLMs to a GitHub repository with some CSVs and get the auto-generated `datapakage.json`.

### 5. How can we stream/update new data reliably? E.g: some datasets like Ethereum `blocks` could be updated every few minutes

I don't have a great answer. Perhaps just push the new data into partitioned datasets?

### 7. Is it possible to [mount large amount of data](https://rclone.org/commands/rclone_mount/) ([FUSE](https://github.com/datalad/datalad-fuse)) from a remote source and get it dynamically as needed?

It should be possible. I wonder if we could mount all datasets locally and explore them as if they were in your laptop.

### 8. Can new table formats play efficiently with IPFS?

Parquet could be a great fit if we figure out how to deterministically serialize it and integrate with IPLD. This will reduce their size as unchanged columns could be encoded in the same CID.

Later on I think it could be interesting to explore running [`delta-rs`](https://github.com/delta-io/delta-rs) on top of IPFS.

### 9. How to work with private data?

Not sure. Homomorphic encryption?

### 10. How could something like [Ver](https://raulcastrofernandez.com/data-discovery-updates/) works?

If you can envision the table you would like to have in front of you, i.e., you can write down the attributes you would like the table to contain, then the system will find it for you. This probably needs a [[Knowledge Graphs]]!

### 11. How can a [[Knowledge Graphs]] [help with the data catalog](https://docs.atomicdata.dev/usecases/data-catalog.html)?

It could help users connect datasets. With good enough core datasets, it could be used as an LLM backend.

### 12. [How would a Substack for databases look like](https://tomcritchlow.com/2023/01/27/small-databases/)?

An easy tool for creating, maintaining and publishing databases with the ability to restrict parts or all of it behind a pay wall. Pair it with the ability to send email updates to your audience about changes and additions.

### 13. Curated and small data (e.g: at the community level) is not reachable by Google. How can we help there?

Indeed! With LLMs on the rise, community curated datasets become more important as they don't appear in the big data dumps.

### 14. Wait, wait... What do you mean by "Open Data"?

I use it as a generic term to refero to data and content that can be freely used, modified, and shared by anyone for any purpose. Generally alligned with the [Open Definition](https://opendefinition.org/od/2.1/en/) and [The Open Data Commons](https://opendatacommons.org/).

### 15. Is this sustainable?

Having a sustainable Funding Models is key and running large-scale data infrastructure requires significant resources (servers, engineers, etc.). A way to make it sustainable is to make it similar to the GitHub model with free public datasets but paid private options.

### 16. How todeal with ilegal content?

Probably like AT Protocol or Activity Pub. Some moderation should be done as a community while other should be upstream.

## Related Projects

### Data Package Managers

- [Qri](https://web.archive.org/web/20240413160218/https://qri.io/). An evolution of the classical open portals that added [[Decentralized Protocols]] (IPFS) and computing on top of the data. Sadly, [it came to an end early in 2022](http://web.archive.org/web/20231205090514/https://qri.io/winding_down).
- [Datalad](https://www.datalad.org/). [Extended to IPFS](https://kinshukk.github.io/posts/gsoc-summary-and-future-thoughts/)
  - Is a [great tool](https://archive.fosdem.org/2020/schedule/event/open_research_datalad/) and uses Git Annex (distributed binary object tracking layer on top of git).
  - Complicated to wrap your head around. Lots of different commands and concepts. On the other hand, it's very powerful and flexible. Git Annex is complex but powerful and flexible.
- [Huggingface Datasets](https://huggingface.co/docs/datasets)
- [Quilt](https://github.com/quiltdata/quilt)
  - Forces both Python and S3
- [Oxen](https://github.com/Oxen-AI/Oxen)
  - Data is not accesible from other tools
  - [Docs](https://github.com/Oxen-AI/oxen-release#-oxen-release) are sparse
  - Definitely more in the Git for Data space than Dataset Package Manager
- [Frictionless Data](https://frictionlessdata.io/projects/#software-and-standards)
- [Datopian Data CLI](https://github.com/datopian/data-cli). Successor of [DPM](https://github.com/frictionlessdata/dpm-js)
- [LakeFS](https://lakefs.io/blog/git-for-data/). More like Git for Data
- [Datasette](https://lite.datasette.io/)
- [Algovera Metahub](http://web.archive.org/web/20230516122527/https://github.com/AlgoveraAI/metahub)
- [DVC](https://github.com/iterative/dvc)
- [XVC](https://github.com/iesahin/xvc)
- [ArtiVC](https://artivc.io/)
- [Xetdata](http://web.archive.org/web/20230308121025/https://xetdata.com/)
- [Dud](https://github.com/kevin-hanselman/dud)
- [Splitgraph](https://github.com/splitgraph/sgr)
- [Deep Lake](https://github.com/activeloopai/deeplake)
- [Dim](https://github.com/c-3lab/dim)
  - Hard to grok how to use it from the docs
  - Quite small surface area. You can basically install datasets from URLs, create new ones, or apply some kind of GPT3 transformation on top of them
- [Juan Benet's data](https://github.com/jbenet/data)
- [Colah's data](https://github.com/colah/data)
- [Dolt](https://docs.dolthub.com/) is another interesting project in the space with some awesome data structures. They also [do data bounties](https://www.dolthub.com/repositories/dolthub/us-businesses)!

### Computation

- [Kamu](https://www.kamu.dev/)
- [Bacalhau](https://www.bacalhau.org/)
- [Holium](http://web.archive.org/web/20230316153938/https://docs.holium.org/)
- [Ocean Protocol](http://web.archive.org/web/20230605003018/https://oceanprotocol.com/technology/compute-to-data)
- [The Graph](https://thegraph.com/)
- [Trino](https://trino.io/)

### Large Open Datasets

- [Wikipedia](https://dumps.wikimedia.org/)
- [Github](https://www.gharchive.org/)
- [HackerNews](https://console.cloud.google.com/bigquery?p=bigquery-public-data&d=hacker_news)
- [Reddit](https://pushshift.io/)
- [Blockchain](https://github.com/blockchain-etl)
- [Our World In Data](https://github.com/owid/owid-datasets)
- [Fivethirtyeight](https://data.fivethirtyeight.com/)
- [BuzzFeed News](https://github.com/BuzzFeedNews)
- [ProPublica](https://www.propublica.org/datastore/)
- [World Bank](https://data.worldbank.org/indicator)
- [Ecosyste.ms](https://repos.ecosyste.ms/open-data)
- [Deps.dev](https://deps.dev/)
- [Twitter Community Notes](https://twitter.com/i/communitynotes/download-data)
- [Open Meteo](https://open-meteo.com/). [Open Data on AWS](https://github.com/open-meteo/open-data).

### Open Data Organizations

- [Datahub](https://datahub.io/)
- [Frictionless](https://frictionlessdata.io/)
- [Open Data Services](https://opendataservices.coop)
- [Catalyst Cooperative](https://catalyst.coop/)
- [Carbon Plan](https://github.com/carbonplan)
- [Data is Plural](https://github.com/data-is-plural)
- [Data Liberation Project](https://github.com/data-liberation-project)
- [Opendatasoft](https://www.opendatasoft.com/)
- [Open Source Observer](https://www.opensource.observer/)
- [Source.coop](https://source.coop/)
- [Our World in Data](https://ourworldindata.org/)

### Indexes

- [Google Dataset Search](https://datasetsearch.research.google.com/)
- [Data Commons](https://datacommons.org/)
- [BigQuery Public Data](https://cloud.google.com/bigquery/public-data)
- [Kaggle Datasets](https://www.kaggle.com/datasets)
- [Datahub Awesome](http://web.archive.org/web/20220705213540/https://datahub.io/awesome)
- [HuggingFace Datasets](https://huggingface.co/datasets)
- [Data World Open Data](http://web.archive.org/web/20241008114054/https://data.world/datasets/open-data)
- [Eurostat](https://ec.europa.eu/eurostat/en/)
- [Statista](https://www.statista.com/)
- [Enigma](https://enigma.com/)
- [DoltHub](https://www.dolthub.com/discover)
- [Socrata](https://dev.socrata.com/)
- [Nasdaq](https://data.nasdaq.com/search)
- [Zenodo](https://zenodo.org/search?page=1&size=20&q=&file_type=csv&type=dataset&sort=mostviewed)
- [Splitgraph](https://www.splitgraph.com/explore)
- [Awesome Public Datasets](https://github.com/awesomedata/awesome-public-datasets)
- [Data Packaged Core Datasets](https://github.com/datasets/)
- [Internet Archive Dataset Collection](https://archive.org/details/datasets)
- [AWS Open Data Registry](https://registry.opendata.aws/)
- [Datamarket](https://en.datamarket.es/)
- [Open Data Stack Exchange](https://opendata.stackexchange.com/)
- [IPFS Datasets](http://web.archive.org/web/20230322192215/https://awesome.ipfs.io/datasets/)
- [Datasets Subreddit](https://www.reddit.com/r/datasets/). [Open Data Subreddit](https://www.reddit.com/r/opendata/)
- [Academic Torrents Datasets](https://academictorrents.com/browse.php)
- [Open Data Inception](https://opendatainception.io/)
- [Victoriano's Data Sources](https://victorianoi.notion.site/Data-Sources-79b28912c6d941af99e6ef102c578fa0)
- [Data is Plural](https://www.data-is-plural.com/)
- [Open Sustainable Technology](https://opensustain.tech/)
- [Public APIs](https://github.com/public-api-lists/public-api-lists)
- [Real Time Datasets](https://github.com/bytewax/awesome-public-real-time-datasets)
- [Environmental Data Initiative](https://edirepository.org/)
- [Data One](https://www.dataone.org/)
- [The Linked Open Data Cloud](https://lod-cloud.net/)
- [Organisation for Economic Co-operation and Development](https://www.oecd.org/en/data.html)

### Open Data Driven Projects

- [Safemap](https://safemap.io/)
- [Is it hot in Learmonth right now?](https://isithotrightnow.com/) (Australia) and [Hoy Extremo](https://hoyextremo.com/) (Spain)

### Novel Technologies

- [Differential Privacy](https://en.wikipedia.org/wiki/Differential_privacy) that allows releasing statistical information about datasets while protecting the privacy of individual data subjects.
- Homomorphic encryption.
- New [deidentification techniques](https://www.ipc.on.ca/sites/default/files/legacy/2016/08/Deidentification-Guidelines-for-Structured-Data.pdf).
- Data watermarking, fingerprinting, and provenance tracking with blockchains.
- Better CPUs, compression algorithms, and storage technologies.

## Open Source Web Data IDE

After playing with [Rill Developer](https://github.com/rilldata/rill-developer), DuckDB, Vega, WASM, [Rath](https://rath.kanaries.net/), and other modern Data IDEs, I think we have all the pieces for an awesome web based BI/Data exploration tool. Some of the features it could have:

- Let me add local and remote datasets. Not just one as I'd like to join them later.
- Let me plot it using Vega-Lite. Guide me through alternatives like [Vega's Voyager2](https://vega.github.io/voyager2/) does.
  - Might be as simple as surfacing Observable Plot with DuckDB WASM...
- Use LLMs to improve the datasets and offer next steps:
  - Get suggested transformations for certain columns. If it detect a date, extract day of the week. If it detects a string, `lower()` it...
  - Get suggested plots. Given that it'll know both the column names and the types. Should be possible to create a prompt that returns some plot ideas and another that takes that and write the Vega-Lite code to make it work.
  - Make it easy to query the data via Natural Language.
- Let me transform them with SQL ([DuckDB](https://duckdb.org/)) and Python ([JupyterLite](https://jupyterlite.readthedocs.io/en/latest/)). Similar to [Neptyne](https://neptyne.com/) but in the browser (WASM).
- Let me save the plots in a separate space and give me a shareable URL encoded link.
  - Local datasets could be shared using something like [Magic Wormhole](https://github.com/magic-wormhole/magic-wormhole) or a temporal storage service.
- Let me grab the state of the app (YAML/JSON), version control it, and generate static (to publish in GitHub Pages) and dynamic (hosted somewhere) dashboards from it.
  - Similar to [evidence.dev](https://evidence.dev/) or [portal.js](https://portaljs.org/).
- It could also have "smart" data checks. Similar to [deepchecks](https://github.com/deepchecks/deepchecks) alerting about anomalies, outliers, noisy variables, ...
- Given a large amount of [[Open Data]]. It could offer a way for people to upload their datasets [and get them augmented](http://web.archive.org/web/20250108164736/https://subsets.io/).
  - E.g: Upload a CSV with year and country and the tool could suggest GDP per Capita or population.

Could be an awesome front-end to explore [[Open Data]].

### Relevant Projects

- [Rath](https://rath.kanaries.net/)
- [Hex.tech](https://hex.tech/)
- [Perspective](https://perspective.finos.org/)
- [Rill Developer](https://github.com/rilldata/rill-developer)
- [Datastation](https://datastation.multiprocess.io/)
- [Excalichart](http://web.archive.org/web/20231018190556/https://www.excalichart.com/)
- [Chartpilot](http://web.archive.org/web/20241007164422/https://www.chartpilot.com/)

#### Datafile

Inspired by [ODF](https://docs.kamu.dev/odf/spec/), Frictionless and [Croissant](https://github.com/mlcommons/croissant).

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

#### Simple Package Manager Design

- A package spec file describing a package.
- A hierarchical owner/name folder structure for installed packages.
- Spec file locator with fallback to the package registry.
- Versioning and latest versions.
- Asset checksums.

#### Unified Schema Design

- The goal is to create a single, [unified schema across datasets](https://docs.cybersyn.com/getting-started/concepts/unified-schema). This schema aims to strike a balance between flexibility to accommodate arbitrarily shaped data along with consistency in core tables.
- Datasets are built around two concepts: entities and timeseries.
  - Entities are concrete things or objects (a geography, a company, a mortgage application).
  - Timeseries are abstract measures (ie. statistics) related to an entity and a date.
- The core tables are:
  - `entities`: Contains the entities that are being tracked. For example, Spain, Madrid, etc.
    - Should be something like `province_index` or `weather_station_index` to be able to join with the timeseries.
    - This table contains permanent characteristics describing an entity. E.g: for Provinces, the name, the region.
    - Each row represents a distinct entity. The table is wide, in that immutable characteristics are expressed in their own fields.
  - `attributes`: Attributes are descriptors of a timeseries. An attribute is the equivalent of a characteristic except for the abstract timeseries rather than the concrete entity.
    - Columns:
      - `variable_id`: Unique identifier for the attribute
      - `name`: Name of the attribute
      - `description`: Description of the attribute
      - `unit`: Unit of the attribute
      - `source`: Source of the attribute
      - `frequency`: Frequency of the attribute (daily, monthly, etc.)
      - `measurement_type`: Type of measurement (e.g. nominal, ordinal, interval, ratio, percentage)
      - Metadata columns;
        - `category`: Category of the attribute
        - `namespace`: Namespace of the attribute
        - `tags`: JSON with tags of the attribute?
        - `aggregation_function`: Aggregation function to use when aggregating the attribute
  - `timeseries`: Timeseries are abstract measures (ie. statistics, metrics) related to an entity and a date. Timeseries are temporal statistics or measures centered around an entity and timestamp. For example, GDP of Spain, population of Madrid, etc. Timeseries are abstract concepts (ie. a measure) rather than a concrete thing.
    - Could be something like `weather_timeseries` to be able to join with the entities.
    - Columns:
      - `variable_id`: Unique identifier for the attribute
      - `geography_id`: Unique identifier for the geography
      - `date`: Date of the metric
      - `value`: Value of the metric
  - `relationshipts`: Contains the relationships between entities. For example, Spain is composed of provinces, Madrid is a province, etc.
    - Relationships can also be temporal – valid for an interval defined by specific start and end dates.
  - `characteristics`: Descriptors of an entity that are temporal. They have a start date and end date.

## Architecture

![Architecture](https://user-images.githubusercontent.com/1682202/224966685-b2406d5f-b162-4a93-a68a-af0afca45ebe.png)

_[Edit on Excalidraw](https://excalidraw.com/#json=RLkinyHZE-4Px_cl21UDI,z8D-l20khdaB-lRumpzN7w)_
