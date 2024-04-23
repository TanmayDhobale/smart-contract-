// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

contract massageboard {

address public owner;  // this is the address of the owner of the contract
 string[] public messages;  // this is the array of messages that will be posted on the board
 
 event Newmassage(address indexed sender , string message);  // this is the event that will be emitted when a new message is posted
     
constructor(){

owner = msg.sender;

}

function postmassage(string memory message) public { // this is the function that will be used to post messages on the board
    require(msg.sender == owner, "only owner can post messages");
    messages.push(message);
    emit Newmassage(msg.sender, message); }


    function getmassagecount() public view returns(uint256){  // this is the function that will be used to get the number of messages on the board
    return messages.length;
    
    }

function Getmassage ( uint256 index) public view returns ( string memory) {  // this is the function that will be used to get a specific message from the board
require(index < messages.length, "invalid index bhai ");
return messages[index];

}


    
}