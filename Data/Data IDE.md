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
- Given a large amount of Open Data. It could offer a way for people to upload their datasets [and get them augmented](http://web.archive.org/web/20250108164736/https://subsets.io/).
  - E.g: Upload a CSV with year and country and the tool could suggest GDP per Capita or population.

Could be an awesome front-end to explore Open Data.

## Relevant Projects

- [Rath](https://rath.kanaries.net/)
- [Hex.tech](https://hex.tech/)
- [Perspective](https://perspective.finos.org/)
- [Rill Developer](https://github.com/rilldata/rill-developer)
- [Datastation](https://datastation.multiprocess.io/)
- [Excalichart](http://web.archive.org/web/20231018190556/https://www.excalichart.com/)
- [Chartpilot](http://web.archive.org/web/20241007164422/https://www.chartpilot.com/)
