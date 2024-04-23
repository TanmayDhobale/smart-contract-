// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13; //version of the Solidity compiler that should be used.

 contract coinflip {
   enum CoinSide { HEADS, TAILS }
   enum GameState { IN_PROGRESS, PLAYER_WON, PLAYER_LOST }
 
 event GameResult( address indexed player, CoinSide choosenside, GameState result);

function flipcoin(CoinSide side) public {
  unit256 randomnumber = uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty, msg.sender))) % 2;   // this genrate the random number if its even number or its an odd 

CoinSide result = CoinSide(randomnumber);
 GameState gamestate = (CoinSide == result) ? GameState.PLAYER_WON : GameState.PLAYER_LOST;

    emit GameResult(msg.sender, choosenside , gamestate);

}
 }

