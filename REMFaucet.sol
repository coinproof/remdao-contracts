// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.11;

import "./IERC20.sol";
import "./Ownable.sol";

contract OhmFaucet is Ownable {
    IERC20 public rem;

    constructor(address _rem) {
        rem = IERC20(_rem);
    }

    function setOhm(address _rem) external onlyOwner {
        rem = IERC20(_rem);
    }

    function dispense() external {
        rem.transfer(msg.sender, 1e10);
    }
}