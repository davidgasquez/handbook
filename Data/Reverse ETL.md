# Reverse ETL

- Data landscape moving like Unix tools. Specialized tools talking on the data warehouse.

## Why?

- It provides a source of truth for all the tools: **the data warehouse**.
    - Each tool can use and share the same definitions, events, and properties.
    - Tracking is less dependent of business rules.
    - Centralized tests can be added to validate assumptions.
    - It removes some tools limitations (e.g. Customer.io ways of doing segmentation, Pendo limitation on events cohort).
    - SQL Queries will return the same numbers than other BI tools like Mixpanel.
- You get to use all the data you have, improving your [[Data Culture]].
    - You can use the real source of truth for all the events and not rely on tracking only.
    - You can join sources like ChartMogul, Customer.io, etc,
    - You can create more interesting events by enriching the events and user profiles with extra properties/traits (Trial Started with a conversion provability attached). Makes product analytics much more powerful.
- It is much easier to re-use the data available in the warehouse than it is to import the data in any new tool we use in the future.
	- You can be much more flexible with the tools we want to use because the data is shared and owned by us.
	- You avoid being locked in to BI tools like Mixpanel since the logic will be stored in our warehouse.
- As any new tool, it gives more flexibility and power.
    - The current state is the starting point! We start using it to fix some issues or add some interesting profile properties
