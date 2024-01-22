// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SimpleSorage{
    uint favoriteNumber;

    struct People{
        uint age;
        string name;
    }


    //People public person = People({age: 23, name: "Bob"});
    People[] public person;

    mapping (string => uint ) public NameToAge;

    //当函数后面加上了virtual 说明此函数能被子合约重写
    function store(uint _favoriteNumber) public virtual{
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint){
        return favoriteNumber;
    }

    //memory和calldata 都是只存在funciton中的修饰符  strut,mapping,Array这三种类型的变量做名义参数是时,需要在前面加上memory/calldata
    //memory和calldata区别: memory方法里面参数可以修改 calldata无法在方法内修改
    function addPerson(uint _age, string memory _name) public{
        person.push(People({age:_age,name:_name}));

        NameToAge[_name] = _age;
    }

//     function getIndexByName(string memory targetName) public view returns (int) {
//         for (uint i = 0; i < person.length; i++) {
//             // 比较字符串是否相等
//             if (keccak256(abi.encodePacked((person[i].name))) == keccak256(abi.encodePacked((targetName)))) {
//                 return int(i); // 返回找到的位置（下标）
// }}}
}