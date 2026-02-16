# Decentralized Protocols

- Decentralized protocols become [fat protocols](https://www.usv.com/writing/2016/08/fat-protocols/).
  - On the internet, the main protocols take care of communications (HTTPS, SSH, ...) and apps are built on top. These apps and services store our data in silos. These protocols are necessary but not valuable. Value is captured by the apps.
    - A great example of a modern open source protocol is [[IPFS]].
  - Fat protocols contain the data. With open protocols and decentralized data ([[Decentralized Web]]), apps are only the frontend of the services.
- [Protocol and Open Source Funding](https://youtu.be/few99D5WnRg?list=WL). It'll add to the current ways to fund open source projects:
  - Consulting: open source the code, sell consulting.
  - Cloud: open source some code, but sell a closed source cloud complement.
  - [Community](https://mobile.twitter.com/balajis/status/1310101055816921090): open source all code, and issue a token or charge for access to the community.
  - Open Source projects would have a protocol. You could buy shares of Kubernetes, TensorFlow, ... or contribute to gain tokens. This [[incentives]] contributing and helping people.
  - [Many more](https://youtu.be/Axj8NJXnCN0)!
- Tokens create new, scoped economies, and those economies enable new ways of organizing production and operation of goods and services. Because these economies are programmable, they can also embed and optimize for value systems and goals.
- [Moving to protocols, not platforms](https://knightcolumbia.org/content/protocols-not-platforms-a-technological-approach-to-free-speech), is an approach for free speech in the twenty-first century. Rather than relying on a "marketplace of [[ideas]]" within an individual platform — which can be hijacked by those with malicious intent—protocols could lead to a marketplace of ideals, where competition occurs to provide better services that minimize the impact of those with malicious intent, without cutting off their ability to speak entirely.
  - The fundamental power of the internet is its _interoperability_. It was born out of the ability of different networks to talk to each other using common protocols. The interoperability is what we've lost in the Web 2.0 era. Even such quintessential thing as a web API has no well defined standard or protocol, just a very vague concept of REST or RPC. We need commonly accepted standards and _decentralized_ protocols: for web APIs, for identity management, for message queuing, for web callbacks (webhooks), for online transactions, for semantic web and ontology, etc.
- [Decentralization enables permissionless innovation](https://newsletter.squishy.computer/p/decentralization-enables-permissionless):
  - Designing for survivability often leads to decentralization, redundancy, diversity, and adaptability, contrasting with centralized systems optimizing for efficiency.
  - Nature uses these same properties for resilience against catastrophes.
  - The internet's original decentralized design enabled permissionless innovation.
  - Even if systems recentralize (e.g., application layer), building on a decentralized substrate fosters evolvability and allows new innovations.
  - [The idea is to replace the useful functions of a system with locally controlled and owned ones](https://geohot.github.io/blog/jekyll/update/2022/02/09/the-problem-of-the-state.html).
- [Redecentralization one layer up, is progress](https://newsletter.squishy.computer/p/redecentralization):
  - Content-addressing (CIDs) decouples data from origin, enabling fungible storage, redundancy, and credible exit.
  - UCANs (user-controlled authorization networks) decouple trust from origin via self-sovereign signatures.
  - Petname systems map human-friendly names to keys and CIDs locally, bypassing centralized naming.
  - Aggregators can arise without lock-in: users retain their data and social graphs for seamless exit.
  - Friend-to-friend gossip networks enable Dunbar-scale "cozyweb" communities.
- [Centralization is inevitable](https://newsletter.squishy.computer/p/centralization-is-inevitable):
  - Scale-free networks emerge via preferential attachment and efficiency, concentrating power in hubs.
  - Power-law distributions confer resilience to random failure but acute vulnerability to targeted attacks.
  - Networks cycle through randomness, growth, consolidation, and collapse.
  - Overlapping systems at different stages guard against monocultures and single points of failure.
- One wallet / DID / private key could allow you to log in to any service. That's your credentials. [[NFTs|Owning a thing]] could allow you to enter somewhere.
- There should be no technical or social single-point-of-failure for the overall protocol and network. There should be no single organization or individual who can entirely exclude others from the ecosystem (though the ecosystem may collectively exclude bad actors). There should be multiple independent interoperating service providers for each infrastructure component.
- [Open source protocols should favor composability over just about everything](https://youtu.be/TdBTJY-G8xs). Breaking big things into smaller things. This encourages experimentation at multiple levels.
  - Forking should be a right. Keeps authority contingent (if they abuse power, they might get forked).
- **[Progressive decentralization](https://a16zcrypto.com/content/article/progressive-decentralization-crypto-product-management/) optional centralization.**
  - A decentralized protocol can work with a centralized provider. It has the benefits of both (might be fast but no lock users in).
- A major downside of decentralized protocols/networks is that they tend to perform poorly. Hubs are efficient. Hubs act as routers through which information can travel from A to B to C, efficiently.
- [It's the properties decentralization gives us that we care about, not decentralization itself](https://haseebq.com/why-decentralization-isnt-as-important-as-you-think/). Decentralization is a global, emergent property. You can feel latency, you can feel transaction fees, but networks ostensibly feel the same whether they're centralized or decentralized. Decentralization is valuable when it lets you do new things fundamentally better, not old things fundamentally worse.
- Ultimately, [users don't care about decentralization](https://news.ycombinator.com/item?id=38694551). Most of the time, it doesn't matter if the service is distributed or comes from a single server sitting in someone's basement. Users want to use services (chat, write mails, watch videos, have a website, buy stuff, sell stuff) and not run infrastructure of any kind. Decentralization is a means to an end, not an end in itself.
- If a system requires a centralized part, a great alternative is give the user the ability to point to other centralized things taking care of that part.
- If you have a protocol, try enforcing the desired behavior using the protocol. Your ideas of how to solve it might not be the best and adding a protocol restriction (incentives/penalties) will make people figure out.
- When building a technology, consider: [does this centralize or decentralize power?](https://geohot.github.io/blog/jekyll/update/2021/01/18/technology-without-industry.html)
- Many decentralized protocols are trying to build next generation common digital infrastructure.
  - Unfortunately,[nearly every crypto project realized that they could capture value (make a lot of money) with innovative tokenomics that looked a lot like Ponzis, or at least borderline securities fraud](https://andrewconner.com/common-digital-infrastructure/).
- [Whether something is decentralised or not is a function of the administrative control of different parts of the system, not a function of the network topology](https://bsky.app/profile/martin.kleppmann.com/post/3jujacxncil2r).
- [Credible neutrality](https://nakamoto.com/credible-neutrality/) is the principle that a system or protocol should be demonstrably fair and impartial to all participants (open source and publicly verifiable execution), with no hidden biases or privileged interests. When building mechanisms that decide high-stakes outcomes, it's very important for those mechanisms to be credibly neutral. Rules to building a credibly neutral mechanism:
  - Don't write specific people or specific outcomes into the mechanism.
  - Open source and publicly verifiable execution.
  - Keep it simple. Keeping the protocol simple brings a number of benefits (e.g: makes the protocol simpler to reason about, increasing the number of people who understand and can participate, decreases the cost of creating new infrastructure, reduces the risk of catastrophic bugs, reduces the social attack surface).
  - Don't change it too often.
- Cryptoeconomics is about trying to reduce social trust assumptions by creating systems where we introduce explicit economic incentives for good behavior and economic penalties for bad behavior.
- [Decentralized systems accelerate innovation by maximizing the greatest number of possibilities and variations that are considered](https://faintsignal.org/decentralized-systems-accelerate-innovation/). Centralized systems are efficient, not disruptively innovative.
- There is a [trilemma with Decentralized Identity](https://maciek.blog/p/dit). You can't have all three:
  - Self-sovereign identity: the user is in control of their identity.
  - [[Privacy]]-preserving: the user's identity is not shared with third parties.
  - Sybil-resistant: identity is subject to scarcity; i.e., creating more identifiers cannot be used to manipulate a system.
- Two big unsolved problems on decentralized [[Mechanism Design]] are identity (making sure that the same person can't have multiple identities) and collusion (making sure groups cannot coordinate to manipulate the system).
- Identity can be delegated to a community. E.g: Gitcoin uses Passport because they know what the identity requirements are for that community. Solving identity at a global scale means "[seeing like a state](https://newsletter.squishy.computer/p/soulbinding-like-a-state)" and distorting the messy reality.
  - What we call "on-chain identity" is really "on-chain legibility" - a standardized, certified, registered system that simplifies complex human identity into quantifiable data points, similar to how scientific forestry reduced complex ecosystems to countable rows of trees.
  - The solution is "Keys not IDs" - focus on what users are authorized to do rather than who they are, using public-key cryptography for authorization without the baggage of permanent identity tracking.
  - Shift to a zero-trust model: trust people via signatures, not servers
  - Build webs of trust via PGP-style key exchanges
  - Layer reputation & attestations (proof-of-humanity, moderation tags) on keys
  - Digital journals as self-sovereign stores of evolving identity data over time.
  - Knowledge graphs tracking which peers mirror each datum, enabling witness-based verification.
  - Credit graphs encoding degrees of trust/credit between participants as identity primitives.
  - [Intersectional Social Data](https://www.radicalxchange.org/media/blog/2019-10-24-uh78r5/) enables group-based and non-individualistic verification via social trust paths.
- The ideal is to focus on Keys, not IDs. Don't focus on who you are but what you are authorized to do.
- Composability is a moat. Web3's open, composable protocols create value when systems interoperate, replacing Web2's network-effect moats.
- [Entangled distributed systems yield unpredictable behaviors, suggesting a 'gardening' rather than 'controlling' approach to protocol design](https://newsletter.squishy.computer/p/web3) (Emergent complexity).
- [Credible exit](https://newsletter.squishy.computer/p/credible-exit) ensures users can leave a service without vendor lock-in by relying on open, decentralized protocols and interchange formats.
  - Decoupling identifiers from hosting (DNS, CIDs) enables seamless migration between providers by updating name mappings.
  - Federated protocols (email, Mastodon) support portability of social graphs and messages across services.
  - Standard export/import formats (OPML for podcasts, XML for WordPress) facilitate hostile interoperability.
  - Durable, universally useful formats (plain text, CSV, PNG, MP3) make data portable and usable outside the originating app.
  - Local-first storage and immutable data (CRDTs) support ongoing synchronization and avoid stale static exports.
  - Permissionless, open APIs and protocols allow multiple apps to interoperate without centralized lock-in.
  - Open source protocols and applications enable full-fidelity exit through forks and reconstructions.
- Explore the [design patterns](https://decentpatterns.com/library/) that are generalizable to protocols, applications, and the user interfaces of decentralized applications and help people build better systems.

## Types of Decentralization

There are [three distinct types of decentralization](https://medium.com/@VitalikButerin/the-meaning-of-decentralization-a0c92b76a274):

- **Architectural decentralization**: How many physical computers make up the system and how many can fail before the system stops working.
- **Political decentralization**: How many individuals or organizations control those computers.
- **Logical decentralization**: Whether the interface and data structures look like a single monolithic system or can be split into independent parts.

A system can be:

- Decentralized in some aspects but centralized in others (e.g., blockchains are politically and architecturally decentralized but logically centralized).
- Architecturally decentralized but politically centralized (e.g., many companies running on AWS).
- Politically decentralized but architecturally centralized (e.g., some formal democracies).

## Why Decentralization Matters

[Decentralization provides three key benefits](https://medium.com/@VitalikButerin/the-meaning-of-decentralization-a0c92b76a274):

- **Fault tolerance**: Systems are less likely to fail accidentally because they rely on many separate components.
- **Attack resistance**: Systems are more expensive to attack because they lack sensitive central points.
- **Collusion resistance**: It's harder for participants to collude in ways that benefit them at the expense of others.

However, decentralization is not a silver bullet:

- Common mode failures can still affect decentralized systems (e.g., all nodes running the same client software with a bug).
- Pure economic models sometimes show that decentralization doesn't matter for security.
- There's a paradox between fostering good coordination (e.g., quick protocol upgrades) while preventing harmful coordination (e.g., 51% attacks).
