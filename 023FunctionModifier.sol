// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract FunctionModifier{
    address public owner;
    uint public x = 10;
    bool public locked; //初始值为false

    //constructor指的是合约部署时跟着初始化的一个函数
    constructor() {
        owner = msg.sender; //把owner这个地址变成合约部署者的地址
    }

    modifier Onlyowner() {
        require(msg.sender == owner,"you are not contract owner ");
        _;  //代表函数主体
    }

    modifier vaildAddress(address _addr) {
        require(_addr != address(0),"address is not valid");
        _;
    }

    function modifyOwner(address _newOwner) public Onlyowner vaildAddress(_newOwner){
        owner = _newOwner;
    }
    
    //函数修饰符可以在函数主体之前被调用，也可以在函数主体之后甚至是中间被调用。
    //下面的函数修饰符避免了重入攻击,也就是一个函数没有执行完马上在调用这个函数

    modifier NoReentrancy() {
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }
    
    function decrement(uint i) public NoReentrancy{
        x -= i;

        if(i > i){
            decrement(i - 1);
        }
    }
   
} 