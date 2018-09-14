pragma solidity ^0.4.2;

contract  DappToken{
   //constructor
   //name 
   string public name = "Dapp Token";
   //symbol
   string public symbol = "DAPP";
   //standard
   string public standard = "DApp Token v1.0";
   uint256 public totalSupply;
   mapping(address =>uint256) public balanceOf;
   constructor(uint256 _initialSupply) public{
       balanceOf[msg.sender]=_initialSupply;
       totalSupply = _initialSupply;
       //alocate the balance
     }
    
}