# AT Protocol

The Authenticated Transfer Protocol, or `atproto`, is a decentralized protocol for large-scale social web applications. “Authenticated” means user data is signed so it can be redistributed and verified without trusting the server that served it.

- AT Protocol is a way to build open social apps where identity and public data can outlive any one app or hosting provider. It combines:
  - [Web-like permissionless publishing](https://atproto.com/articles/atproto-ethos#synthesis),
  - [Peer-to-peer-style self-authenticating data](https://atproto.com/articles/atproto-ethos#synthesis),
  - [Data-intensive distributed systems patterns](https://atproto.com/articles/atproto-for-distsys-engineers): event logs, eventual consistency, and application-specific views.
- The core idea is to separate generic account/data hosting from rich app-specific products. A PDS hosts user data and identity while the AppViews index and present that data for a product.
- [The protocol is the API](https://overreacted.io/open-social). Apps can read, remix, and extend data from other apps without custom integrations, partnerships, or permission.
  - Apps are derived from files. Every app's database becomes a cached materialized view of everybody's folders.
- Users can move accounts between PDSes, and apps can build on shared public records without asking another app for permission.
- Identity is split into permanent DIDs and mutable handles. Handles are DNS-based human names; DIDs identify the account/repo and resolve to the current PDS plus signing keys. AT Protocol currently supports `did:web` and `did:plc`.
- In a normal platform, the canonical database, event log, indices, feeds, moderation, and clients are all internal to one company. In atproto, these become public protocol roles: PDSes, Relays, AppViews, Labelers, and Clients.
- Moderation separates speech from reach. Labels are signed metadata outside repos; labelers publish moderation/trust signals that apps and users can subscribe to or ignore.
- Apps don't start from zero. They don't need to trap users to survive. They can serve small communities and still matter. Ten thousand users can be enough. Niche becomes viable again.
- Atmosphere apps use techniques akin to a zero-trust architecture so that we can cooperate across organizational boundaries using the same high-scale techniques that any cloud service might use.
  - AT Protocol uses [lazy trust](https://atproto.com/articles/atproto-ethos). Services serve computed views for performance, but canonical signed data remains available so bad views can be proven and users can exit.
- Records should contain only the user-created source data; UI data like profiles, like counts, repost counts, and replies are [derived from other records](https://overreacted.io/a-social-filesystem) across the social filesystem.
- Each account has one public data repository. That is a collections of JSON records plus CID-referenced blobs.
- Record deletion does not create a default tombstone; apps that need tombstones must model them explicitly in their Lexicons.
- Resolving an [`at://` URI](https://overreacted.io/where-its-at) is a three-step process: resolve handle to DID, resolve DID to current hosting via the DID Document, then fetch the JSON record from that host.
- Identifier shorthand: DID = account/repo; NSID = collection/schema; rkey/TID = record key; CID = content hash/version; `at://DID/NSID/rkey` = canonical record reference.
- AT Protocol [turns internal backend services](https://atproto.com/articles/atproto-for-distsys-engineers)—canonical storage, event logs, and materialized views—into public, independently operated services.
- [Relays are scaling infrastructure](https://atproto.com/guides/the-at-stack) for “big world” social networks, not a required part of the protocol; smaller apps can work with simpler PDS-centered architectures.
- Firehoses carry repo commits plus identity/account events. Repo data is self-certifying, but identity and account status still require independent DID, handle, and PDS-status verification.
- Users can only [create and modify their own records](https://mackuba.eu/2025/08/20/introduction-to-atproto), so social actions like follows and likes live in the actor's repo.
- The Atmosphere is an [everything ecosystem](https://blog.joebasser.com/3mdvuirqog22z), not an everything app. Apps compete on UX while cooperating on shared identity, lexicons, and social primitives.
- Lexicons define record schemas, XRPC endpoints, and event messages. NSIDs use reverse-DNS authority, and schemas can be published as atproto records resolvable via `_lexicon` DNS TXT → DID → repo record.
- [Atmospheric computing](https://www.pfrazee.com/blog/atmospheric-computing) allows connected clouds. Users keep cloud convenience while clouds interoperate across organizations through shared identity, schemas, and signed data flows.
- AT Protocol makes it easy to credibly exit from any of the apps built on top. [By contrast, many crypto apps don't offer that kind of portability. Privy, for instance, powers login for much of web3, but users can't just take their accounts and move them elsewhere](https://x.com/dwddao/status/1960997393698025906).
