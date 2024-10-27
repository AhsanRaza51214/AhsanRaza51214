
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ANDGate {
    function andGate(bool inputA, bool inputB) public pure returns (bool) {
        return inputA && inputB;
    }

    function confirmTruthTable() public pure returns (bool[4] memory) {
        bool[4] memory results;
        
        results[0] = andGate(false, false);
        
        results[1] = andGate(false, true);
        
        results[2] = andGate(true, false);
        
        results[3] = andGate(true, true);
        
        return results;
    }
}