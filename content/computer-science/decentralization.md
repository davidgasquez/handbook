
# Decentralization

## Blockchain

- [A blockchain is a decentralized database](https://www.youtube.com/watch?v=bBC-nXj3Ng4).
- Cryptocurrencies are a digital version of money protected by cryptography (Merkles Trees).
  - Originally, currencies were actual precious metals, like gold and silver coins. For the sake of portability, these were replaced with bank notes. Pieces of paper which entitled the bearer to a certain quantity of precious metal if they presented them to the bank. That system is known as the gold standard.
  - The gold standard was abandoned in the middle of the 20th century. Now we have "fiat money", which is money that has value simply because everyone agrees it has value. The biggest difference between 20 real dollars and 20 Monopoly dollars now is that you can use the real dollars to pay taxes.
  - Now that we have an easy way to do consensus in the internet, cryptocurrencies are simply a digital version of money. When you buy Bitcoin you're using the Blockchain to tell it to everyone. If you're going to spend more than you have, everyone will be able to see it!
- Proof of work is a mathematical problem that takes time to solve. Solving it proves that you've spent some time trying combinations until it worked. Proof of work creates scarcity. The blockchain knows that the miners are spending its time and resources on proving the mathematical puzzles.
- Ethereum serves as a platform (turing complete) to create (blockchain) apps the same way Android/iOS does on mobile.
  - Its much more flexible than Bitcoin and that makes it riskier.
- Forks in blockchain act like genetic mutations. The users will apply pressure and protocols will evolve.
- [Fat Protocols](https://www.usv.com/writing/2016/08/fat-protocols/).
  - On the internet, the main protocols take care of communications (HTTPS, SSH, ...) and apps are built on top. These apps and services store our data in silos. These protocols are necessary but not valuable. Value is captured by the apps.
  - Fat protocols will use tools like blockchain to store the data. With open protocols and decentralized data, apps are only the frontend of the services.
- [Protocol and Open Source Funding](https://youtu.be/few99D5WnRg?list=WL). It'll add to the current ways to to fund open source projects:
  - Consulting: open source the code, sell consulting.
  - Cloud: open source some code, but sell a closed source cloud complement.
  - [Community](https://mobile.twitter.com/balajis/status/1310101055816921090): open source all code, and issue a token or charge for access to the community.
    - Open Source projects would have a protocol. You could buy shares of Kubernetes, Tensorflow, ... or contribute to gain tokens. This incentives contributing and helping people.
- Governance.
- Blockchains is useful when these conditions are met:
  - The resource is scarce (limited).
  - Fungible (there isn't a difference between two items. eg. storing files). All the coins are mutually interchangeable.
  - The resource can be provided by a lot of people.
- Smart contracts can be defined as code that's replicated and executed on all the blockchain nodes.

### Links

- [Crypto Canon](https://a16z.com/2018/02/10/crypto-readings-resources/) - Great list of crypto readings and resources
  - [Understanding Crypto](https://a16z.com/2020/04/30/explaining-crypto-from-a16z/)- Learn more about cryptocurrencies
- [Trading View](https://www.tradingview.com/markets/cryptocurrencies/) - Crypto charts
- [Messari](https://messari.io/) - Curated insights, markets data, and research to crypto's pioneers
- [ProtoSchool](https://proto.school/) - Interactive tutorials on decentralized web protocols
- Bounty Based Collaboration
  - [Bounties Network](https://bounties.network/) - Find freelancers and bounty programs for any task paid in any token on Ethereum
  - [Open Bounty](https://openbounty.status.im/) - Bounty-based collaboration tool that plugs right into GitHub
  - [Gitcoin](https://gitcoin.co/) - The easiest way to leverage the open source community to incentivize or monetize work
- Interesting Projects
  - [Augur](https://www.augur.net/) - A prediction market protocol owned and operated by the people that use it
  - [Aragon](https://aragon.org/) - Platform that lets you freely organize and collaborate without borders or intermediaries

## Federated Networks

- Traditional social applications like Twitter, Facebook, and Instagram operate on a client-server model. As the user, all your interactions go through a single company's servers. In a federated network, users are still interacting with a server, but anyone can run a server that interoperates with others in the network, giving users more providers to choose from.
- This gives users more choices for applications, policies, and community cultures. Email is an example of a federated protocol that everyone on the internet uses. Gmail is a popular email application, but if you use a different provider you can still communicate with anyone with an email address.
- Federated networks provide a familiar user experience, since users do not have to bear full responsibility for their account credentials, and can interact with content the way they're used to.
- On the downside, a federated protocol might be slow to adapt while a centralized service is able to iterate into the modern world and beyond. WhatsApp was able to introduce end-to-end encryption to over a billion users with a single software update (email is still not end-to-end encrypted). Federated services always seem to coalesce around a provider (or instance) that the bulk of people use, federation becomes a sort of implicit threat. [An open source infrastructure for a centralized network now provides almost the same level of control as federated protocols, without giving up the ability to adapt. If a centralized provider with an open source infrastructure ever makes horrible changes, those that disagree have the software they need to run their own alternative instead. It may not be as beautiful as federation, but at this point it seems that it will have to do.](https://signal.org/blog/the-ecosystem-is-moving/)
- It has also [many potentials](https://drewdevault.com/2020/09/20/The-potential-of-federation.html). Because there are hundreds or even thousands of instances, the users get the privilege of choosing an instance whose rules they like, and which federates with other instances they wish to talk to. This system also makes it hard for marketing and spam to get a foothold — it optimizes for a self-governing system of human beings talking to human beings, and not for corporations to push their products.
- The governance of a federated system then becomes distributed among many operators. Every instance has the following privileges:
  - To set the rules which govern users of their instance.
  - To set the rules which govern who they federate with.
