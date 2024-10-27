// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract cont1{
    uint public year;
    string public name;
    
    constructor(uint u1,string memory s1){
        year = u1;
        name = s1;
    }
}
contract cont2{
    uint public date;
    string public time;
    bool public summer;
    
    constructor(uint u2,string memory s2,bool b2){
        date = u2;
        time = s2;
        summer = b2;
    }
}

contract chid1 is cont1(2002,"string"),cont2(32,"sawo",true){

}


// contract child2 is cont1,cont2{
//     constructor(
//         uint u1,string memory s1,
//         uint u2,string memory s2,bool b1
//         )cont1(u1,s1)
//         cont2(u2,s2,b2){

//         }
// }