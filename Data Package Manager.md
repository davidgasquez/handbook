# Data Package Manager

Package managers have been hailed among the most important innovations Linux brought to the computing industry.
Data is not code, but the activities of both publishers and users of datasets resemble those of authors and users of software packages. Package managers provide frictionless access to code, an universal catalogue, standardized metadata, versioning, and a social/reputation layer (e.g: installs)

## Principles

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

## Storage and Serialization

- **Permanence**. Each [version](http://web.archive.org/web/20211209080049/http://tech.datopian.com/versioning/) should be permanent and accessible (look at `git`, `IPFS`, `dolt`, ...).
- **Versioning**. Should be able to manage _diffs_ and _incremental changes_ in a smart way. E.g: only storing the new added rows or updated columns.
  - Should allow [automated harvesting of new data](http://web.archive.org/web/20211209080017/http://tech.datopian.com/harvesting/) with sensors (external functions) or scheduled jobs.
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

## Transformations

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

## Consumption

- **Accessible**. Datasets are **files**. Datasets are static assets living somewhere. Don't get in the middle with libraries, gated databases or [obscure licenses](https://www.heltweg.org/posts/how-to-make-sure-no-one-cares-about-your-open-data/). Keep in mind right to exit and decentralization.
- **Documentation**. Surface derived work (e.g: reports, other datasets, ...) and not only the raw data with minimal metadata.
- **Embedded Visualizations**. Know what's in there before downloading it.
  - **Sane Defaults**. Suggest basic charts (bars, lines, time series, clustering). Multiple [views](http://web.archive.org/web/20211209065537/http://tech.datopian.com/views/).
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
  - Data is an _experience good_. Its true value often remains uncertain until after it has been used and analyzed. This characteristic creates information asymmetries between data collectors (like local communities) and potential buyers or users, making quality assurance and standardization crucial for building digital trust in data markets.

## Simple Package Manager Design

- A package spec file describing a package.
- A hierarchical owner/name folder structure for installed packages.
- Spec file locator with fallback to the package registry.
- Versioning and latest versions.
- Asset checksums.
