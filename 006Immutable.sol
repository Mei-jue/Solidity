// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


//Immutable
contract Immutable{

    //变量前增加了immutable修饰符,说明他只能被constructor这个初始化函数修改,之后再也不能被修改了.
    address  public immutable MY_ADDRESS;
    uint public immutable numb;

    //constructor指的是合约部署时跟着初始化的一个函数
    constructor(){
        MY_ADDRESS = msg.sender;
        numb = 200;
    }
} 