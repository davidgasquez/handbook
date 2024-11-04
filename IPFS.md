# IPFS

- It's a file system with [content based addressing](https://www.youtube.com/watch?v=5Uj6uR3fp-U). Instead of domains, you use the content as the domain. Because content can be very very long, we run a small program on it to produce a unique identifier based on that content (a hash). These identifiers are long enough that the possibility of two pieces of content creating the same one is virtually impossible.
  - Files are automatically deduplicated.
  - [It chunks, hashes and organizes blobs in a smart way](https://docs.google.com/presentation/d/1Gx8vSqrWZ7X-3SCgITXqQdinZQeXIAA7ITqL25SsPN8/edit#slide=id.g741b4d76cd_0_13).
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
