// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//第五课 Constant和Immutable常量修饰符

contract Constant{

    //constant修饰符代表这个常量是不可以修改的,这样储存的是时候可以减少GAS的消耗
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UINT = 123;
    address public Test_ADDRESS;
    
    function mod() public {
        Test_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 ;
    }
}