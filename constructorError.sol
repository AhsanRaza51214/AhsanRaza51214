// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SuperContract {
    uint a = 1;

}
contract SubContract is SuperContract {
        constructor(){
            a =2;
        }
    }
