# IPFS

- It's a file system with [content based addressing](https://www.youtube.com/watch?v=5Uj6uR3fp-U).
  - Files are automatically deduplicated.
- Once something is added, it can't be changed anymore.
- IPFS supports versioning using commits.
- Keeping files available is a challenge. If the nodes storing a file go down, it'll disappear from the network. Filecoin can help with this adding incentives to the equation.
- IPFS makes some nice properties the default. E.g: content addressing.

## [IPLD](https://ipld.io/)

- Data model for IPFS
- Everything is a node. Nodes have types.
- The data structure is a Merkle Tree.
- Makes easy to have interoperability of data. Useful for distributed databases.
  - Bridges content addressing and distributed systems.

## LibP2P

- Modular peer to peer networking layer.
- Multiple users across the decentralized ecosystem.
- [Many implementations](https://libp2p.io/implementations/) of each module.
