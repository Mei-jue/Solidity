// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//第三课 Solidity变量类型

contract Primitive{
    bool public boo = false; //bool 是solidity的逻辑符号 (true/false),初始默认值是false

    uint8 public numa = 2**8-1; //uint8是非负整数类型,最大值为2**8-1(0-255)
    
    uint16 public numb = 3; // uint16最大值为2**16-1(0-65535)
    
    uint public numc = 3; //uint 是uint256的缩写,最大值为2**256-1 
    
    int8 public numd = -128; //int8是整数类型,最小值是 -2**7,最大值是2**7-1

    int public nume  = 2 ** 255-1; //int最小值为-2**255,最大值为2**255-1


    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    bytes1 public a; //默认值为0x00(10进制转成16进制)
}