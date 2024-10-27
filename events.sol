// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract events{

    event log(address indexed sender,  string msg);
    event anthoerlog();

    function test() public {
        emit log(msg.sender, "hello web3.0");
        emit log(msg.sender, "its all about decentralization");
        emit anthoerlog();
    }

}