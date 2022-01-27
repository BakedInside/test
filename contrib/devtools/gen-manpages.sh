#!/usr/bin/env bash
# Copyright (c) 2016-2019 The Beans Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

BEANSD=${BEANSD:-$BINDIR/beansd}
BEANSCLI=${BEANSCLI:-$BINDIR/beans-cli}
BEANSTX=${BEANSTX:-$BINDIR/beans-tx}
WALLET_TOOL=${WALLET_TOOL:-$BINDIR/beans-wallet}
BEANSQT=${BEANSQT:-$BINDIR/qt/beans-qt}

[ ! -x $BEANSD ] && echo "$BEANSD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
read -r -a BNSVER <<< "$($BEANSCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }')"

# Create a footer file with copyright content.
# This gets autodetected fine for beansd if --version-string is not set,
# but has different outcomes for beans-qt and beans-cli.
echo "[COPYRIGHT]" > footer.h2m
$BEANSD --version | sed -n '1!p' >> footer.h2m

for cmd in $BEANSD $BEANSCLI $BEANSTX $WALLET_TOOL $BEANSQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${BNSVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${BNSVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
