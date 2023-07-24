# Run Empowerchain (https://empowerchain.io) in docker

This is used after initially setting up the daemon and config in a VM (not docker).

It may be hard to bootstrap from scratch in docker.

Mapping:
* /empowerchain : Client home dir, private keys etc (i.e. what's usually $HOME/.empowerchain)

Optional mapping:
* To store the blockchain data somewhere else, make `data` a symlink and point it somewhere else, and map that.

Example: Symlink: `<empowerchain-dir>/data -> /data/empowerchain/data`. Them map /data/ to some large storage. The details here are too specific and strange; no need for the sub-dirs really. I'm just posting my setup as an example. The data directory can also be configured in one of the config files.
