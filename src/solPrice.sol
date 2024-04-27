// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract solPrice {
    uint public price;
    uint public priceInWei;  // 1 ether = 1000000000000000000 wei   
    address public owner; 
    
    constructor() {
        price = 100;
        priceInWei = 1000000000000000000;
        owner = msg.sender;  // msg.sender is the address of the account that is deploying the contract
    }   
    
    function setPrice(uint _price) public {
        require(msg.sender == owner, "You are not the owner");
        price = _price;
        priceInWei = _price * 1000000000000000000;
    }
    
    function getPrice() public view returns (uint) { // view keyword is used to declare the function as a read-only function
        return price;
    }
    
    function getPriceInWei() public view returns (uint) { // view keyword is used to declare the function as a read-only function 
        return priceInWei;
    }

    function buyPrice() public payable {
        require(msg.value >= priceInWei, "Insufficient funds");
        owner = msg.sender;
    }

    function withdraw() public {
        require(msg.sender == owner, "You are not the owner");
        payable(owner).transfer(address(this).balance);
    }
     
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function getOwner() public view returns (address) {
        return owner;
    }

    function getContractAddress() public view returns (address) {
        return address(this);
    }

    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }

    function getContractBalanceInWei() public view returns (uint) {
        return address(this).balance / 1000000000000000000;
    }

    function getContractBalanceInEther() public view returns (uint) {
        return address(this).balance / 1000000000000000000;
    }

    function getContractBalanceInGwei() public view returns (uint) {
        return address(this).balance / 1000000000;
    }

    function getContractBalanceInSzabo() public view returns (uint) {
        return address(this).balance / 1000000;
    }

    function  changeOwner(address _newOwner) public {
        require(msg.sender == owner, "You are not the owner");
        owner = _newOwner;
    }

    function  changeOwnerToContract() public {
        require(msg.sender == owner, "You are not the owner");
        owner = address(this);
    }

    function changeprice(uint _price) public {
        require(msg.sender == owner, "You are not the owner");
        price = _price;
        priceInWei = _price * 1000000000000000000;
    }
    
}