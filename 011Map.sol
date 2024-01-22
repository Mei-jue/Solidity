// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Mapping{
    //mapping的语法是mapping(keyvalue关键值 => valueType某个值类型) 一一匹配起来
    //keyvalue可以是 string bool int types 或者是已经部署的合约
    //valuType可以是多种类型变量 甚至是另一个mapping或者是array(动态数组)
    //mapping是不可迭代的

    mapping (address => uint) public myMap;

    function getbyAdd(address _add) public view returns(uint){
        //返回的是这个mapping方法对应的数,如果没有则返回默认值(0)
        return myMap[_add];
    }

    function set(address _add,uint _i) public {
        //更新每个地址对应的数
        myMap[_add] = _i;
    }

    function deleteNum(address _add) public {
        //delete是把每个地址对应的值恢复为初始值
        delete myMap[_add];
    }
}