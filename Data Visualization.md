# Data Visualization

Charts can be more memorable, shareable, and quickly understood than written explanations. They help explore data, explain concepts, and [share information effectively](https://www.scientificdiscovery.dev/p/salonis-guide-to-data-visualization). Clear visuals strengthen [[Communication]] and [[Dashboards]].

## Why Visualize Data

- Visualizing data helps spot patterns, trends, and unusual data points that are hard to see in averages or summaries alone. A chart can reveal what an aggregate hides (e.g: [Anscombe's quartet](https://en.wikipedia.org/wiki/Anscombe%27s_quartet)).
- Diagrams can explain concepts faster than text. A few-second visual can replace a long, confused explanation.
- A good chart communicates faster than 1,000 words, but that power comes with responsibility. Misleading charts spread just as easily as accurate ones.
- Plotting data helps spot potential errors and artefacts before publishing.

## Chart Type Selection

- Pick the chart type and [[Metrics|metric]] that answers the exact question; rates, counts, and shares reveal different truths, so show multiple small views when one cut feels incomplete.
- Use familiar or practical units (minutes, not standard deviations) when possible. They're easier to interpret and sense-check.

## Clarity

- Keep labels horizontal and close to the data. Direct labels beat legends.
- Don't include a legend, instead, [label data series directly](https://www.eugenewei.com/blog/2017/11/13/remove-the-legend) in the plot area (usually to the right of the most recent data point). Exception: many categories referring to many elements (e.g., maps).
- Use small multiples when too many lines overlap. Splitting into panels makes individual trends easier to follow, though it trades off direct comparison between entities.
- Sort categories logically (inherent order) or alphabetically (easier to skim).
- [Data looks better naked](https://www.darkhorseanalytics.com/blog/data-looks-better-naked).
  - Reduce non-data-ink as much as possible without losing communicative power.
- Don't include more precision than needed.
- Format axis labels to match the figures being measured (e.g., currency for dollars).
- Look at axis label spacing and increase intervals if crowded.

## Color

- Match colors to concepts (plants → green, bad → red) so readers aren't forced into a [Stroop test](https://en.wikipedia.org/wiki/Stroop_effect).
- Use [color-blind friendly palettes](https://davidmathlogic.com/colorblind/). About 4-5% of the population has some form of color blindness.
- Direct labeling also helps color-blind readers distinguish categories.

## Axes

- Start your y-axis at zero (assuming no negative values).
- Avoid deceptive scale tricks.
  - Leave breathing room on axes instead of extreme zoom.
  - The lowest point shouldn't appear to be the lowest possible value.
- Pair relative effects with absolute numbers (or prediction intervals instead of confidence intervals) to show real-world risk.

## Context

- Include explanations for anomalous events directly on the graph.
- For unfamiliar chart types, guide readers with annotations. Add a mini-tutorial if needed.
- Include targets as asymptotes to help audiences see if you're on track.
- Make the chart standalone. Add purpose, units, timeframe, and source so it can travel without losing meaning and slot into [[Dashboards]] or memos without extra explanation.
- Titles for graphs should be the conclusion or key takeaway.
- Always note the data source below the graph.

## Reproducibility

- Publish provenance with the chart (data source, assumptions, and ideally a link to code) so others can verify or reuse it and keep [[Data Practices]] consistent.
- A chart with no source isn't much better than claiming a trend was revealed in a dream.

## Common Pitfalls

- Skip arrows or other glyphs that imply trends you can't support.
- Don't use 3D charts. They distract and make values harder to read.
- Avoid confidence intervals when showing variability. They're often [misinterpreted as ranges](https://www.dangoldstein.com/papers/Hofman_Goldstein_Hullman_Visualizing_Uncertainty_Mislead_Scientific.pdf). Consider prediction intervals or underlying percentages instead.
- Try not to have too many data series; 5-8 is the usual limit depending on clustering.

## Guiding Questions

Ask yourself when creating a visualization:

1. Is my chart type meaningful for the question?
2. Can I make it clearer?
3. If complicated, can I guide the viewer through it?
4. Does the chart work as a standalone?
5. Is my chart's presentation justifiable?
6. Is my chart reproducible?

## Tools

- [Datawrapper](https://www.datawrapper.de/). Quick interactive charts with great defaults.
- [Raw Graphs](https://app.rawgraphs.io/). Open-source, unusual chart types.
- [Observable Plot](https://observablehq.com/plot/). JavaScript-based exploratory charts.
- [Kepler](https://kepler.gl/). Geospatial visualization.

## Resources

- [Saloni's Guide to Data Visualization](https://www.scientificdiscovery.dev/p/salonis-guide-to-data-visualization)
- [The Data Visualization Catalogue](https://datavizcatalogue.com/) and [Project](https://datavizproject.com/)
- [Visualization Curriculum](https://jjallaire.github.io/visualization-curriculum/)
- [Guides for Visualizing Reality](https://flowingdata.com/2020/06/01/guides-for-visualizing-reality/)
- [Datawrapper's Do's and Don'ts](https://www.datawrapper.de/blog/category/datavis-dos-and-donts)
- [The Science of Visual Data Communication: What Works](https://journals.sagepub.com/doi/10.1177/15291006211051956)
