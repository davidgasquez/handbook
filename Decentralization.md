# Decentralization

## Blockchain
- [A blockchain is a decentralized database](https://www.youtube.com/watch?v=bBC-nXj3Ng4).
- Blockchain solve the Byzantine Generals Problem: [How do participants in a decentralized network communicate and coordinate with each other towards some action without relying on a trusted third-party?](https://a16z.com/2019/11/08/crypto-glossary/).
	- Blockchains are "trustless". There are mechanisms in place by which all parties in the [[Systems | system]] can reach a consensus on what the canonical truth is.
	- Power and trust is distributed (or shared) among the network's stakeholders (e.g. developers, miners, and consumers), rather than concentrated in a single individual or entity (e.g. banks, governments, and financial institutions).
	- Blockchains put the code in charge.
	- Blockchains allow permisionless innovation.
- Blockchains is useful when these conditions are met:
	- The resource is scarce (limited).
	- Fungible (there isn't a difference between two items. eg. storing files). All the coins are mutually interchangeable.
	- The resource can be provided by a lot of people.
- Smart contracts can be defined as code that's replicated and executed on all the blockchain nodes.
- Smart contracts allow permissionless composability. [Composability allows anyone in a network to take existing programs and adapt or build on top of them, it unlocks completely new use cases that don’t exist in our world](https://future.a16z.com/how-composability-unlocks-crypto-and-everything-else/).
- [Blockchains could replace networks with markets](https://twitter.com/naval/status/877467629308395521).

## Cryptocurrencies
- Cryptocurrencies are a digital version of money protected by cryptography (Merkles Trees).
  - Originally, currencies were actual precious metals, like gold and silver coins. For the sake of portability, these were replaced with bank notes. Pieces of paper which entitled the bearer to a certain quantity of precious metal if they presented them to the bank. That system is known as the gold standard.
  - The gold standard was abandoned in the middle of the 20th century. Now we have "fiat money", which is money that has value simply because everyone agrees it has value. The biggest difference between 20 real dollars and 20 Monopoly dollars now is that you can use the real dollars to pay taxes.
  - Now that we have an easy way to do consensus in the internet, cryptocurrencies are simply a digital version of money. When you buy Bitcoin you're using the Blockchain to tell it to everyone. If you're going to spend more than you have, everyone will be able to see it!
- Proof of work is a mathematical problem that takes time to solve. Solving it proves that you've spent some time trying combinations until it worked. Proof of work creates scarcity. The blockchain knows that the miners are spending its time and resources on proving the mathematical puzzles.
- Ethereum serves as a platform (Turing complete) to create (blockchain) apps the same way Android/iOS does on mobile.
  - Its much more flexible than Bitcoin and that makes it riskier.
- Forks in blockchain act like genetic mutations. The users will apply pressure and protocols will evolve. You can fork cryptocurrencies, you can't do that with companies and that makes blockchains more resilient.
	- Developers [[focus]] on designing great [[incentives]] for the system to make it through!
- Blockchains automate/deprecates the "hubs". Instead of automating Uber drivers, they make drivers work with clients directly by removing Uber.

## Protocols
- Decentralized protocols become [fat protocols](https://www.usv.com/writing/2016/08/fat-protocols/).
  - On the internet, the main protocols take care of communications (HTTPS, SSH, ...) and apps are built on top. These apps and services store our data in silos. These protocols are necessary but not valuable. Value is captured by the apps.
  - Fat protocols will use tools like blockchain to store the data. With open protocols and decentralized data, apps are only the frontend of the services.
- [Protocol and Open Source Funding](https://youtu.be/few99D5WnRg?list=WL). It'll add to the current ways to to fund open source projects:
  - Consulting: open source the code, sell consulting.
  - Cloud: open source some code, but sell a closed source cloud complement.
  - [Community](https://mobile.twitter.com/balajis/status/1310101055816921090): open source all code, and issue a token or charge for access to the community.
    - Open Source projects would have a protocol. You could buy shares of Kubernetes, Tensorflow, ... or contribute to gain tokens. This [[incentives]] contributing and helping people.
    - [Many more](https://youtu.be/Axj8NJXnCN0)!
- [Moving to protocols, not platforms](https://knightcolumbia.org/content/protocols-not-platforms-a-technological-approach-to-free-speech), is an approach for free speech in the twenty-first century. Rather than relying on a "marketplace of [[ideas]]" within an individual platform — which can be hijacked by those with malicious intent—protocols could lead to a marketplace of ideals, where competition occurs to provide better services that minimize the impact of those with malicious intent, without cutting off their ability to speak entirely.
	- The fundamental power of the internet is its _interoperability_. It was born out of the ability of different networks to talk to each other using common protocols. The interoperability is what we've lost in the Web 2.0 era. Even such quintessential thing as a web API has no well defined standard or protocol, just a very vague concept of REST or RPC. We need commonly accepted standards and _decentralized_ protocols: for web APIs, for identity management, for message queuing, for web callbacks (webhooks), for online transactions, for semantic web and ontology, etc.
- One wallet could allow you to login to any service. The wallet are your credentials.

## Web3
- Web3 is much more than blockchains and crypto. [It means building in public, new types of incentives, real ownership of digital property, internet-wide login / identity](https://ckarchive.com/b/p9ueh9hp409k), ...
- Key decisions associated with maintaining and updating cryptonetwork protocols. As with every human organization, aligning interests and beliefs among human participants to reach agreement is the goal of [[governance]].
  - [In cryptonetworks, these decisions are made by the community, using open and transparent mechanisms](https://onezero.medium.com/why-decentralization-matters-5e3f79f7638e). DAOs don't need a boss!
  - Cryptocurrencies have the [[Incentives]] to keep the users happy since forking is an option.
- [Web3 is a decentralized internet. Under Web3, the internet is shared online and governed by the collective "we"](https://docs.google.com/document/d/1SWJw_NTyUvgdB_asRzsnVyKjciW8dZbeqQeUeWsEiQc).
- Web3 incentives open source. That creates an ecosystem of composable and permissionless tools that increases the speed of innovation.
- This new space encourages experimentation in a diverse set of fields like [[Governance]] or [[Finances]].

### NFTs
Unique assets whose value is independent from one another. For example, an NFT might represent a piece of unique digital artwork.

- Today, if you create something digital, ownership is tied in with distribution. If someone makes an `mp3` or a `jpeg` piece of art and post it or sell it online you'll have to have it to consume it (DRM can sometime change this).
- With NFTs, the digital asset you create has a clear, provable owner (you!) and anyone you sell it to (and anyone thereafter) can trace it back to you, the creator, and know it is authentic.
- When you create this NFT thing, you can create rules around it via a smart contract. One of these rules could be that anytime this piece of art you made is transferred across owners, you get 5% of what the new person paid for it, in perpetuity, automatically.
- There are [many problems with NFTs](https://youtu.be/YQ_xWvX1n9g)!

 ### Resources

- [The Complete Guide to Full Stack Web3 Development](https://dev.to/dabit3/the-complete-guide-to-full-stack-web3-development-4g74) and the [Web3 stack](https://edgeandnode.com/blog/defining-the-web3-stack).
- Web3 native alternatives:
	- [Trello](https://dework.xyz/).
	- [Notion](https://www.clarity.so/).
	- [Medium](https://mirror.xyz/dashboard).
- https://twitter.com/graphprotocol/status/1481065133967560706
	- [Search](https://slate.host/).
	- [Imgur](https://www.pinata.cloud/).
	- [Netlify](https://fleek.co/).
	- [Firebase](https://textile.io)

## Links

- [Crypto Canon](https://a16z.com/2018/02/10/crypto-readings-resources/) - Great list of crypto readings and resources.
	- [Understanding Crypto](https://a16z.com/2020/04/30/explaining-crypto-from-a16z/)- Learn more about cryptocurrencies.
- [DAOs, A Canon](https://future.a16z.com/dao-canon/). Understand, build, and get involved with “decentralized autonomous organizations”.
- [Trading View](https://www.tradingview.com/markets/cryptocurrencies/) - Crypto charts.
- [Finematics](https://www.youtube.com/channel/UCh1ob28ceGdqohUnR7vBACA). Educational videos on DeFi (Decentralized Finance).
- [Messari](https://messari.io/) - Curated insights, markets data, and research to crypto's pioneers.
- [ProtoSchool](https://proto.school/) - Interactive tutorials on decentralized web protocols.
- [RabbitHole](https://rabbithole.gg/) - Learn how to use and contribute to decentralized apps, earning tokens based on your on-chain activity.
- [Ethereum Community Guides](https://ethereum.org/en/learn). A set of resources to help you learn more about Ethereum.
- [Augur](https://www.augur.net/) - A prediction market protocol owned and operated by the people that use it.
- Interesting Data Projects:
	  - [Flipside](https://flipsidecrypto.xyz/).
	  - [Dune](https://dune.xyz/).
	  - [OurNetwork](https://ournetwork.substack.com/). They also have a [Talent Agency](https://tally.so/r/wbx6Em).
	  - [MetricsDAO](https://metricsdao.xyz/).

### Bounty Based Collaboration:

- [Bounties Network](https://bounties.network/) - Find freelancers and bounty programs for any task paid in any token on Ethereum.
- [Open Bounty](https://openbounty.status.im/) - Bounty-based collaboration tool that plugs right into GitHub.
- [Gitcoin](https://gitcoin.co/) - The easiest way to leverage the open source community to incentivize or monetize work.
- [Inmunefy](https://immunefi.com/) - Web3's leading bug bounty platform, protecting $100 billion in user funds.
- [DAOexchangethe](https://daoexchange.app/). Cross-DAO bounty board.

#### Analytics Bounties

- [Dune](https://twitter.com/dune_bounties).
- [Flipside](https://flipsidecrypto.xyz/).
- [MetricsDAO](https://metricsdao.notion.site/metricsdao/Bounty-Programs-d4bac7f1908f412f8bf4ed349198e5fe).
- [Unigrants Community Analytics](https://unigrants.notion.site/Unigrants-Community-Analytics-b09bbb16579d4a569b7e2d393afc4459)