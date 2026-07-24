// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { BurnMintTokenPool } from '@chainlink/contracts-ccip/src/v0.8/ccip/pools/BurnMintTokenPool.sol';
import { IBurnMintERC20 } from '@chainlink/contracts-ccip/src/v0.8/shared/token/ERC20/IBurnMintERC20.sol';

/**
 * @notice BurnMint Token pool with owner specified
 */
contract TreehouseBurnMintTokenPool is BurnMintTokenPool {
  constructor(
    IBurnMintERC20 token,
    uint8 localTokenDecimals,
    address[] memory allowlist,
    address rmnProxy,
    address router,
    address initialOwner
  ) BurnMintTokenPool(token, localTokenDecimals, allowlist, rmnProxy, router) {
    transferOwnership(initialOwner);
  }
}
