//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

//第二课 第一个去中心化应用

contract Counter{
    //uint初始默认值为0,我么也可以自定义值
    uint public count;

    function get() public view returns(uint){
        return count;
    }

    function increment() public {
        count += 1;
    }

    function decrement() public{
        count -= 1;
    }
}