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

   event Transfer(
     address indexed _from,
     address indexed _to,
     uint256 _value
   );
   mapping(address =>uint256) public balanceOf;
   constructor(uint256 _initialSupply) public{
       balanceOf[msg.sender]=_initialSupply;
       totalSupply = _initialSupply;
       //alocate the balance
     }
    
     //execption if account doesn't enough
    //return a boolean
    
    
    function transfer(address _to, uint256 _value) public returns (bool success){
       //execption if account doesn't enough
       require(balanceOf[msg.sender] >= _value);
       // transfer balance
       balanceOf[msg.sender] -= _value;
       balanceOf[_to] += _value;
        //transfer event
        Transfer(msg.sender, _to , _value);
        return true;
    }


    
}