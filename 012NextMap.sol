// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract nextMapping{
    mapping (address => mapping(uint => bool)) public nested;//将地址和另一个mapping方法匹配到一起

    function get(address _add,uint _num) public view returns(bool){
        //nested[_add]返回的是一个mapping方法 然后这个方法[_num]返回的是个bool
        return nested[_add][_num];
    }

    function set(address _add,uint _num,bool _boo) public{
        //set方法
         nested[_add][_num] = _boo;
    }

    function deleteTest(address _add,uint _num) public {
        //delete方法
        delete nested [_add][_num];
    }
}