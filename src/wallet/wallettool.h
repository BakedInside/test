// Copyright (c) 2016-2019 The Beans Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef BEANS_WALLET_WALLETTOOL_H
#define BEANS_WALLET_WALLETTOOL_H

#include <wallet/wallet.h>

namespace WalletTool {

void WalletShowInfo(CWallet* wallet_instance);
bool ExecuteWalletToolFunc(const std::string& command, const std::string& file);

} // namespace WalletTool

#endif // BEANS_WALLET_WALLETTOOL_H
