// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Array{
    uint[] public arr1;//动态长度数组

    uint[] public arr2 = [1,2,3,4,5];//动态长度数组 初始长度5位

    uint[10] public fixArray;//固定长度数组 默认每个长度都是0

    function get(uint _index) public view returns(uint){
        return arr1[_index];
    }

    //可以通过Get函数返回整个数组,注意不要返回动态长度数组

    function getArray() public view returns(uint[] memory){
        return arr2;
    }

    //push方法就是在数组末尾添加-i的整数,注意固定长度数组无法用push函数来添加值
    function pushTest(uint _i) public {
        arr2.push(_i);
    }

    //对于动态长度数组,pop就是删除出末尾那个元素
    function pop() public{
        arr2.pop();
    }


    function getLegth() public view returns(uint){
        return arr2.length;
    }

    
    function deleteArr(uint _index) public {
        delete arr2[_index]; //将数组指定位置恢复初始值
    }

    function example() external{
        //想要在内存中创建一个数组,只能创建一个固定长度的数组
        uint[] memory a = new uint[](5);
    }
}