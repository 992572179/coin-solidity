pragma solidity ^0.4.23;

contract token1 {

//属性默认为internal，方法默认为public
  uint a;

  bool  public flag ;

  function getA() constant public returns (uint) {
    return a;
  }

  function getSingnal() public returns (bool)  {
    flag = true;
    return  flag;
  }

}
