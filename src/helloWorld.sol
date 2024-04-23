// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13; //version of the Solidity compiler that should be used.

contract test {  //A contract in Solidity is similar to a class in object-oriented programming languages. It data (state variables) and functions that operate on that data.
   string public name;

   constructor() { // This is the constructor function of the contract. It is executed only once, when the contract is deployed.
   name = "Hello World";
   }

   function GetName () public view returns (string memory) {
    return name;}
}
