// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Todos{

    //建立一个名为学生的数组结构 里面有三个不同的属性(名字,分数,是否及格)
    struct students{
        string name;
        uint grade;
        bool pass;
    }

    students[] stu;


    function set(string calldata _name,uint _grade,bool _pass) public {
        //第一种往里面穿参数的方法

        // stu.push(students(_name,_grade,_pass));

        //通过关键字函数往里面穿参数
        
        // stu.push(students({grade:_grade,name:_name,pass:_pass}));

        //通过一个memory方法建立一个空数组
        students memory Mystu;
        Mystu.name = _name;
        Mystu.grade = _grade;
        Mystu.pass = _pass;

        stu.push(Mystu);
    }

    //当变量前加了一个public函数修饰符时候 等于自动帮它建立一个get函数
    function get(uint _index) public view returns(string memory,uint,bool){
        return(stu[_index].name,stu[_index].grade,stu[_index].pass);
    }


    function updatename(uint _index,string calldata _name) public {
        students storage newstudent = stu[_index]; 
        newstudent.name = _name; 
        //stu[_index].name = _name;
    }

}