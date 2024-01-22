// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


//第四课 变量的作用域

contract Variables{
    
    //通过内置的函数type()获取当前数据变量的最大值、最小值
    uint8 public a =type(uint8).max;
    int8 public b = type(int8).min;

    //Local在函数中声明 调用的时候才用 blockchain 存在链上要消耗GAS state 在函数外部声明,存储在区块链上 Global默认的全局变量,整个以太坊自带的变量

    string public text = "Hello Guys"; // 存在链上


    function doSomthing() public view returns (uint,address) {
        uint  numc = 8 ; // 内存变量 就是在调用这个函数的时候才有这个变量

        uint time = block.timestamp ; //全局变量 当前区块的时间戳

        address sender = msg.sender ;//msg.sender调用这个函数的地址
        return (time,sender);
    }
}