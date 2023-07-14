// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BetaTK is ERC20, Ownable {
    uint public constant TOTAL_SUPPLY = 1000 ether;
    uint private constant FIRST_TX_AMOUNT = 10 ether;
    address private constant FIRST_TX_ADDRESS = 0xC7a763255ec8fF6115996DBD0C81757B1b0B3B40;

    constructor() ERC20("BetaTK", "BTK") {
        _mint(msg.sender, TOTAL_SUPPLY);
        defaultTransfer(FIRST_TX_ADDRESS, FIRST_TX_AMOUNT);
    }

    function defaultTransfer(address firstAddress, uint amount) private {
        transfer(firstAddress, amount);
    }
}
