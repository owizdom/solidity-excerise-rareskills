
// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract OneWeekLockUp {

    mapping(address => uint256) private balances;
    mapping(address => uint256) private lastDepositTimestamp;
    address user = msg.sender;

    function checkbal(address _user) public view returns(uint256){
        return balances[_user];
    }

    function depositEth() external payable{
        
        require (balances[user] > 0,"insufficent balance");

        balances[user] += msg.value;
        lastDepositTimestamp[user] = block.timestamp;
    }

    function withdrawEth(uint256 amount) external{
         require(balances[msg.sender] >= amount, "Insufficient balance");
        require(block.timestamp >= lastDepositTimestamp[msg.sender] + 1 weeks, "Withdrawal is not allowed yet");

        // Update the user's balance
        balances[msg.sender] -= amount;
        // Transfer the ether to the user
        payable(msg.sender).transfer(amount);


    }
}