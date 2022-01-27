Vertcoin Core
=============

Setup
---------------------
Vertcoin Core is based on Botcoin COre, the original Beans client and it builds the backbone of the network. It downloads and, by default, stores the entire history of Vertcoin transactions, which requires a few gigabytes of disk space. Depending on the speed of your computer and network connection, the synchronization process can take anywhere from an hour to a day or more.

To download Vertcoin Core, visit [vertcoin.org](https://vertcoin.org/download-wallet/).

Running
---------------------
The following are some helpful notes on how to run Vertcoin Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/vertcoin-qt` (GUI) or
- `bin/vertcoind` (headless)

### Windows

Unpack the files into a directory, and then run vertcoin-qt.exe.

### macOS

Drag Vertcoin Core to your applications folder, and then run Vertcoin Core.

### Need Help?

Since Vertcoin is forked from Beans, most technical questions can be answered using the Beans Help resources listed below.

However, for Vertcoin specific issues, ask for help on the [Vertcoin Discord Channel](https://discord.gg/vertcoin)

Beans help and documentation can be found at the following links:

* See the documentation at the [Beans Wiki](https://en.beans.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#beans](https://webchat.freenode.net/#beans) on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#beans).
* Ask for help on the [BeansTalk](https://beanstalk.org/) forums, in the [Technical Support board](https://beanstalk.org/index.php?board=4.0).

Building
---------------------
Building Vertcoin Core follows the process and tools used for Beans Core.

The following are developer notes on how to build Beans Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [FreeBSD Build Notes](build-freebsd.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide (External Link)]
Gitian building is not presently supported for Vertcoin.

Development
---------------------
The Beans repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Productivity Notes](productivity.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://doxygen.beanscore.org/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [JSON-RPC Interface](JSON-RPC-interface.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [BeansTalk](https://beanstalk.org/) forums, in the [Development & Technical Discussion board](https://beanstalk.org/index.php?board=6.0).
* Discuss project-specific development on #beans-core-dev on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#beans-core-dev).
* Discuss general Beans development on #beans-dev on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#beans-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [beans.conf Configuration File](beans-conf.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Memory](reduce-memory.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)
- [PSBT support](psbt.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
