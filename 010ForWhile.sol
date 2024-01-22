// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ForWhile{
    function addtotal(uint _x) pure public returns(uint){
        uint numa ;
        for(uint i = 0;i < _x ; i++){
            numa += i;
        }
        return numa;
    }


    function loop() pure public returns(uint,uint){
        uint numa ;
        for(uint i = 0;i < 10 ; i++){
            if(i < 3){
                continue;
            }
            if (i > 5){
                break;
            }
            numa = i;
        }

        uint j;
        while (j < 10){
            j++;
        }
        return (numa,j);
    }
}