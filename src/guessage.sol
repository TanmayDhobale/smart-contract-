// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Guessage { 

    uint private age;
    uint public guess;
    string public result;

    constructor() {
        age = 20; 
    }

    function guessAge(uint _guess) public {
        guess = _guess;
        if (_guess == age) {
            result = "Congratulations! You guessed correctly.";
        } else if (_guess < age) {
            result = "Your guess is too low.";
        } else {
            result = "Your guess is too high.";
        }
    }
}
 