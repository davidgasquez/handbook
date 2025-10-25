# Open Data

[Open Data is a public good](https://en.wikipedia.org/wiki/Open_data#Open_Data_as_commons). As a result, individual [[incentives]] are not aligned with collective ones.

As an organization or research group, [spending time curating and maintaining datasets for other people to use doesn't make economic sense](https://en.wikipedia.org/wiki/Economics_of_open_data), unless you can profit from that. When a scientist publishes a paper, they care about the paper itself. They're incentivized to. The data is usually an afterthought.

Combining data from different sources requires the user to reconcile the differences in [[Unified Schema Design|schemas]], formats, assumptions, and more. This [data wrangling is time consuming, tedious and needs to be repeated by every user of the data](https://arxiv.org/pdf/2309.13054).

The Open Data landscape has a few problems:

- **Non Interoperability**. Data is isolated in multiple places and between different formats.
- **Hard to Use**. Good datasets are hard to use as indexing is difficult and [many standards](https://xkcd.com/927/) compete. However, none of the indexers specify how the data is to be formatted, enforce any standardization, ... Users must still perform traditional forms of data merging, cleaning, and standardization.
- **No Collaboration**. No incentives exists for people to work on improving or curating datasets.
- **No Versioning**. Datasets disappear or change without notice. It's hard to know what changed and when. Losing data doesn't just inconvenience a few researchers. It actively hinders scientific progress.
- **Economic Impact**. The inefficiency in data access and preparation represents a significant economic cost. E.g: thousands of Data Analysts spending 80% of their time preparing data for analysis, this represents billions in wasted economic opportunity.

[Open Data can help organizations, scientists, and governments make better decisions](https://twitter.com/patrickc/status/1256987283141492736). It drives innovation and decision-making across virtually every industry and sector. Data is one of the best ways to learn about the world and [[Coordination|coordinate]] people. Imagine if, every time you used a library, you had to find the original developer and hope they had a copy. It would be absurd. Yet that's essentially what we're asking scientists to do. [Science is missing a crucial [[Data Package Manager| packaging]]/publishing/sharing network](https://hackmd.io/wKKm4cIDR6a9kYwZ3srVFg?view). [Friction in data sharing hampers collaboration and limits informed decision making](https://docs.google.com/document/d/1iTl7YWfTAzp8zNXRs01RAIWCP-pRJwQfDg8lsD0TDCM/edit?tab=t.0).

There are three big areas where people work on open data; at the government level covering thousands of datasets (CKAN, Socrata, …), at the scientific level (university level), and at the individual level where folks who are passionate about a topic publish a few datasets about it. This results in lots of datasets that are disconnected and still requires you to scrape, clean, and join it from all the heterogeneous sources to answer interesting questions. [One of the big ways that data becomes useful is when it is tied to other data](https://x.com/auren/status/1139594779895844865). **Data is only as useful as the questions it can help answer**. Joining, linking, and [[Data IDE| graphing]] datasets together allows one to ask more and different kinds of questions.

Open protocols create open systems. Open code creates tools. **Open data creates open knowledge**. We need better tools, protocols, and mechanisms to improve the Open Data ecosystem. It should be easy to find, download, process, publish, and collaborate on open datasets.

Iterative improvements over public datasets yield large amounts of value ([check how Dune did it with blockchain data](https://dune.com/blog/the-community-data-platform))¹. Access to data gives people the opportunity to create new business and make better decisions. Data is vital to understanding the world and improving public welfare. Metcalfe's Law applies to data too. The more connected a dataset is to other data elements, the more valuable it is.

In the blockchain example, data is Open, Verifiable, and Useful. And yet, the main provider of data is Dune, a company that captured most of the data layer. Users can run `cryo` but there are no incentives for them to share the data. There isn't a matchmaking market for data and people are forced to repeat the same work.

Open Source code has made a huge impact in the world. Let's make Open Data do the same! Open data is, essentially, public infrastructure (similar to roads, bridges, or the internet). Let's make it possible for [anyone to fork and re-publish fixed, cleaned, reformatted datasets as easily as we do the same things with code](http://web.archive.org/web/20240719190206/https://juan.benet.ai/blog/2014-02-21-data-management-problems/).

This document is a collection of ideas and principles to make Open Data more accessible, maintainable, and useful. Also, recognizing that a lot of people are already working on this, there are some amazing datasets, tools, and organizations out there, and, that Open Data is a people problem at 80%. This document is biased towards the technical side of things, as I think that's where I can contribute the most. I believe we can do much more with the available data.

### Why Now?

We have better and cheaper infrastructure. That includes things like faster storage, better compute, and, larger amounts of data. We need to improve our data workflows now. How does a world where people collaborate on datasets look like? [The data is there. We just need to use it](https://twitter.com/auren/status/1509340748054945794).

**[The best thing to do with your data will be thought by someone else](https://youtu.be/_agrBn50kyE?t=925)**.

During the last few years, a large number of new data and open source tools have emerged. There are new query engines (e.g: DuckDB, DataFusion, ...), execution frameworks (WASM), data standards (Arrow, Parquet, ...), and a growing set of open data marketplaces (Datahub, HuggingFace Datasets, Kaggle Datasets). "Small data" deserves more tooling and people working on it. There are many novel technologies too.

- [Differential Privacy](https://en.wikipedia.org/wiki/Differential_privacy) that allows releasing statistical information about datasets while protecting the privacy of individual data subjects.
- Fully Homomorphic Encryption.
- New [deidentification techniques](https://www.ipc.on.ca/sites/default/files/legacy/2016/08/Deidentification-Guidelines-for-Structured-Data.pdf).
- Data watermarking, fingerprinting, and provenance tracking with blockchains.
- Better CPUs, compression algorithms, and storage technologies.

These trends are already making their way towards movements like [DeSci](https://ethereum.org/en/desci/) or smaller projects like [Py-Code Datasets](https://py-code.org/datasets). But, we still need more tooling around data to improve interoperability as much as possible. Lots of companies have figured out how to make the most of their datasets. **We should use similar tooling and approaches companies are using to manage the open datasets that surrounds us**. A sort of [Data Operating system](http://web.archive.org/web/20250316031339/https://data-operating-system.com/).

One of the biggest problems in open data today is the fact that organizations treat data portals as graveyards where data goes to die. Keeping these datasets up to date is a core concern (data has marginal temporal value), alongside using the data for operational purposes and showcasing it to the public.

Open data is hard to work with because of the overwhelming variety of formats and the engineering cost of integrating them. Data wrangling is a perpetual maintenance commitment, taking a lot of ongoing attention and resources. [Better and modern data tooling can reduce these costs](https://github.com/catalyst-cooperative/pudl).

Organizations like [Our World in Data](https://ourworldindata.org/) or [538](https://fivethirtyeight.com/) provide useful analysis but have to deal with _dataset management_, spending most of their time building custom tools around their workflows. That works, but limits the potential of these datasets. Sadly, there is no `data get OWID/daily-covid-cases` or `data query "select * from 538/polls"` that could act as a quick and easy entry-point to explore datasets.

We could have a better data ecosystem if we **collaborate on open standards**! So, let's move towards more [composable](https://voltrondata.com/codex), maintainable, and reproducible open data.
