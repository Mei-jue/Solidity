// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import  "./025SimpleStorage.sol"; //import 从外部导入合约

contract SrorageFactory{
    SimpleSorage[] public simpleStorageArray;

    function createSimpleStorage() public {
        SimpleSorage simpleStorage = new SimpleSorage();

        simpleStorageArray.push(simpleStorage);
        //simpleStorageArray.push(new SimpleSorage());
    }


    //address  ABI = application binary interface
    function SFstore(uint _simpleStorageIndex, uint _SFNumber) public{
        simpleStorageArray[_simpleStorageIndex].store(_SFNumber);
    }

    function SFretrieve(uint _simpleStoreageIndex) public view returns(uint){
        return simpleStorageArray[_simpleStoreageIndex].retrieve();
    }

    //合约之间可以相互组合调用
}