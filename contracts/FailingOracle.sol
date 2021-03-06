// SPDX-License-Identifier: GPL-3.0-only
// solhint-disable no-empty-blocks
// solhint-disable no-unused-vars
pragma solidity ^0.7.5;

import "./PriceOracle.sol";

contract FailingOracle is PriceOracle {
    constructor() {}

    function updatePrices() public override {}

    function consultUsdEth(uint256 _usdAmount) public pure override returns (uint256) {
        _usdAmount; // Silent an unused variable warning
        revert("FailingOracle::consultUsdEth: ETH oracle disabled, please use RADICLE");
    }
}
