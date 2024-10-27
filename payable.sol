// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract etherr{
    address payable public owner;
    constructor() payable {
        owner = payable(msg.sender);
    }

    function transfer(address payable addr, uint amount) public {
        (bool success, ) = addr.call{value: amount}("");
        require(success, "failed to send ether");
    }
}