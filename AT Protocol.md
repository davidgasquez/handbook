# AT Protocol

The AT Protocol, or `atproto`, is a decentralized protocol for large-scale social web applications.

- AT Protocol is a way to build open social apps where identity and public data can outlive any one app or hosting provider. It combines:
  - [Web-like permissionless publishing](https://atproto.com/articles/atproto-ethos#synthesis),
  - [Peer-to-peer-style self-authenticating data](https://atproto.com/articles/atproto-ethos#synthesis),
  - [Data-intensive distributed systems patterns](https://atproto.com/articles/atproto-for-distsys-engineers): event logs, eventual consistency, and application-specific views.
- The core idea is to separate generic account/data hosting from rich app-specific products. A PDS hosts user data and identity while the AppViews index and present that data for a product.
  - Apps are derived from files. Every app's database becomes a cached materialized view of everybody's folders.
- Users can move accounts between PDSes, and apps can build on shared public records without asking another app for permission.
- In a normal platform, the canonical database, event log, indices, feeds, moderation, and clients are all internal to one company. In atproto, these become public protocol roles (PDSs, Relays, Clients, ...)
- Apps don’t start from zero. They don’t need to trap users to survive. They can serve small communities and still matter. Ten thousand users can be enough. Niche becomes viable again.
- Atmosphere apps use techniques akin to a zero-trust architecture so that we can cooperate across organizational boundaries using the same high-scale techniques that any cloud service might use

## Resources

- [A Social Filesystem — overreacted](https://overreacted.io/a-social-filesystem)
- [Where It's at:// — overreacted](https://overreacted.io/where-its-at)
- [Open Social — overreacted](https://overreacted.io/open-social)
- [Atproto for distributed systems engineers - AT Protocol](https://atproto.com/articles/atproto-for-distsys-engineers)
- [The AT Stack - AT Protocol Docs - AT Protocol](https://atproto.com/guides/the-at-stack)
- [Introduction to AT Protocol – mackuba.eu](https://mackuba.eu/2025/08/20/introduction-to-atproto)
- [Atproto Ethos - AT Protocol](https://atproto.com/articles/atproto-ethos)
- [The Last Social Account You'll Ever Need. - Interlinked](https://blog.joebasser.com/3mdvuirqog22z)
- [Can atproto scale down? | atproto and bluesky](https://bsky.bad-example.com/can-atproto-scale-down)
- [Atmospheric Computing | Paul's Dev Notes](https://www.pfrazee.com/blog/atmospheric-computing)
