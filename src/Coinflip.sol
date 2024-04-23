// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13; //version of the Solidity compiler that should be used.

 contract coinflip {
   enum CoinSide { HEADS, TAILS }
   enum GameState { IN_PROGRESS, PLAYER_WON, PLAYER_LOST }
 
 event GameResult( address indexed player, CoinSide choosenside, GameState result);

function flipcoin(CoinSide side) public {
    uint256 randomnumber = uint256(keccak256(abi.encodePacked(block.timestamp, block.basefee, msg.sender))) % 2; // this generates the random number if it's an even number or an odd one

    CoinSide result = CoinSide(randomnumber); // this is the result of the coin flip
    GameState gamestate = (side == result) ? GameState.PLAYER_WON : GameState.PLAYER_LOST; // this is the game state of the coin flip

    emit GameResult(msg.sender, side, gamestate);
}
 }

