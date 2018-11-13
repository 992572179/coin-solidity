pragma solidity ^0.4.25;

contract token {

  mapping (address => uint) public balanceOf;

  constructor(uint totalSupply) payable public {
    balanceOf[msg.sender] = totalSupply;
  }

  function transfer(address _to,uint _value) payable public{
    require(balanceOf[msg.sender] >= _value);
    require(balanceOf[_to] + _value >= balanceOf[_to]);

    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;
  }

}
