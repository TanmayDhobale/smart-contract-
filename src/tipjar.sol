// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

 
contract Tipjar  {
  enum  owner { OWNER } 
  enum  tipjar { TIPJAR }
  
  event TipReceived(address indexed from, uint256 amount); // triggered when a tip is received. It logs the address of the sender and the amount of the tip.
  
  constructor {   // This is the constructor function of the contract. It is executed only once, when the contract is deployed.
    owner = msg.sender;
   }
  modifier  Onlyowner { // A modifier is a special function that is executed before a function. It can be used to check conditions before executing a function. 
    require(msg.sender == owner, "You are not the owner");
    _;
  }

  function Tip () pubic payble { // The payable keyword allows the function to receive ether.
     require(msg.value > 0, "You must send a tip"); 
        emit TipReceived(msg.sender, msg.value); // The emit keyword is used to trigger an event. It logs the address of the sender and the amount of the tip.
     }

  function WithdrawTip() public Onlyowner { // The onlyOwner modifier is used to restrict access to the function to the owner of the contract.
   unit256 balance = address(this).balance;  // The balance of the contract is stored in the balance variable.
   require( balance > 0, "No tip to withdraw");

    payable(owner).transfer(balance);
    emit TipReceived(owner, balance); 
  }

  function getbalance() public view onlyowner returns (unit256) { // The view keyword is used to specify that the function does not modify the state of the contract.
  return address(this).balance;
  }
}