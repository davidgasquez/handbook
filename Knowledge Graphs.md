# Knowledge Graphs

- A knowledge graph is a structured representation of information that connects data points through relationships, forming a semantic network.
  - It is used to represent knowledge where entities are nodes and relationships are edges.
  - It is designed to capture the meaning and context of data, enabling machines to understand and reason about information.
- Knowledge graphs facilitate efficient data discovery and exploration. They provide a common language for expressing and sharing knowledge, fostering collaboration and knowledge sharing among different stakeholders.
  - They're great at representing a domain's data, and, together with a model, can deliver answers, though the questions need to be formulated as a query by an expert.
- Linked data enables us to use the web as a large, decentralized graph database. Using links everywhere in data has amazing merits: links remove ambiguity, they enable exploration, they enable connected datasets.
- Why didn't it catch on?
  - Graphs always appear like a complicated mess, and we prefer hierarchies and categories.
  - The Knowledge Graph seems like the purest representation of all data in a company but requires you to have all the data in the right format correctly annotated, correctly maintained, changed, and available.
    - It takes too much effort to maintain and keep it semantic instead of copy-paste text around. This is one of the most interesting [[Artificial Intelligence Models]] application.
  - It offers no protection against some team inside the company breaking the whole web by moving to a different URI or refactoring their domain model in incompatible ways.
    - For the Semantic Web to work, the infrastructure behind it needs to permanently keep all of the necessary sources that a file relies on. This could be a place where [[IPFS]] or others [[Decentralized Protocols]] could help!
  - It tends to assume that the world fits into neat categories. Instead, we live in a world where membership in categories is partial, probabilistic, contested (Pluto), and changes over time.
- Knowledge graphs might be a great way to give AI a "world view".
- The status quo of the semantic web space is still SPARQL.
  - You can build [a knowledge graph database on top of a relational engine](https://twitter.com/RelationalAI).
- Knowledge Graphs act as a semantic layer.
- Tables in SQL (relational databases) are collections of relationships.
- Is possible to make append only and dynamic KGs with Temporal Knowledge Graphs!

## Projects

- [Plow](https://plow.pm/) - A package manager for ontologies empowering anyone to build reliable solutions with ontologies.
- [Golden](https://golden.com/)
- [Geo Browser](https://www.geobrowser.io/)
- [Atomic Data](https://docs.atomicdata.dev/) - Modular specification for sharing, modifying and modeling graph data. It combines the ease of use of JSON, the connectivity of RDF (linked data) and the reliability of type-safety.
