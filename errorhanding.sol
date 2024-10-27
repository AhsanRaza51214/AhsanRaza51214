// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Account {
    uint256 private balance;

    // Event to log deposits
    event Deposited(uint256 amount);
    
    // Event to log withdrawals
    event Withdrawn(uint256 amount);

    // Deposit function
    function deposit(uint256 amount) public {
        require(amount > 0, "Deposit amount must be greater than zero");
        
        // Check for overflow
        uint256 newBalance = balance + amount;
        require(newBalance >= balance, "Overflow detected");
        
        balance = newBalance;
        emit Deposited(amount);
    }

    // Withdraw function
    function withdraw(uint256 amount) public {
        require(amount > 0, "Withdrawal amount must be greater than zero");
        require(amount <= balance, "Insufficient balance");

        uint256 newBalance = balance - amount;
        require(newBalance <= balance, "Underflow detected");
        
        balance = newBalance;
        emit Withdrawn(amount);
    }

    // Function to check balance
    function getBalance() public view returns (uint256) {
        return balance;
    }
}