# Databases

- [Prefer SQLite, Postgres, or another ordinary relational database by default](https://ludic.mataroa.blog/blog/get-me-out-of-data-hell/).
  - Specialized storage must be justified by observed workload and operational needs.
- [Schemas encode domain knowledge](https://ludic.mataroa.blog/blog/flexible-schemas-are-the-mindkiller/). Using typed columns, keys, constraints, and relationships make meaning explicit.
  - Schemaless systems move the schema into application code and people's heads.
- As in any other place, stick to a naming convention to keep things sane.
- Storage is cheap, make use of it.
- Follow a [[Data Practices|SQL style guide]].
  - [Kickstarter's SQL Style Guide](https://gist.github.com/fredbenenson/7bb92718e19138c20591)
  - [Meadmaker's SQL Style Guide](https://github.com/meadmaker/sql-style-guide)
  - [SQL Style Guide](https://www.sqlstyle.guide/)

## Resources

- [Build your own database in Rust](https://github.com/adambcomer/database-engine)
