// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract removeArray{
    //删除remove(3)[1,2,3,4,5,6] => [1,2,3,5,5,6] => [1,2,3,4,5,6,6] => [1,2,3,5,6]
    uint[] public Arr = [1,2,3,4,5,6];

    function  Remove(uint _index) public {
        require(_index < Arr.length,"The index is longer than the length of Arr");

        for(uint i = _index;i < Arr.length-1;i++){
            Arr[i] = Arr[i+1];
    }
    //删除最后一位
        Arr.pop();
    } 

    function get() public view returns(uint[] memory){
        return Arr;
    }
    
}