// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleVoting {
    enum Candidates { Ahsan, Hussain }

    mapping(uint => bool) public hasVoted;
    uint public AhsanVotes;
    uint public HussainVotes;

    uint[20] serialNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11,12,13,14,15,16,17,18,19,20];
    uint voterCount = 20;

    function castVote(uint _voterID, uint _candidate) public {
        if (_candidate == 0 || _candidate == 1) {
            if (hasVoted[_voterID] == false) {
                for (uint i = 0; i < voterCount; i++) {
                    if (serialNumbers[i] == _voterID) {
                        if (_candidate == 0) {
                            AhsanVotes++;
                        } else if (_candidate == 1) {
                            HussainVotes++;
                        }
                        hasVoted[_voterID] = true;
                        break;
                    }
                }
            }
        }
    }

    function getTotalVotes() public view returns (uint, uint) {
        return (AhsanVotes, HussainVotes);
    }
}