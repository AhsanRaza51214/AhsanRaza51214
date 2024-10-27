// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract state{
    uint public age=11;
    function set(uint newa) public {
        age=newa;
    }
}