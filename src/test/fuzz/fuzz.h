// Copyright (c) 2009-2019 The Beans Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef BEANS_TEST_FUZZ_FUZZ_H
#define BEANS_TEST_FUZZ_FUZZ_H

#include <stdint.h>
#include <vector>

void initialize();
void test_one_input(const std::vector<uint8_t>& buffer);

#endif // BEANS_TEST_FUZZ_FUZZ_H
