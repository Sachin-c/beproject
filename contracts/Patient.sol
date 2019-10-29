pragma solidity ^0.5.0;

contract Patient{
    uint public patientCount = 0;
    string name;
    uint age;
    string gender;
    string bg;

    function set(string memory _name, uint _age, string memory _gender,string memory _bg) public {
        patientCount++;
        name = _name;
        age = _age;
        gender = _gender;
        bg = _bg;
        // patients[msg.sender].name=_name;
    }
    function get() public view returns(string memory, uint, string memory,string memory){
    return (name, age, gender,bg) ;
    }
}

// pragma solidity ^0.5.0;

// contract Patient{
//     uint public patientCount = 0;
//     mapping(uint => Info) public info;
//     struct Info{
//     uint id;
//     string name;
//     uint age;
//     string gender;
//     }
// //    modifier checkLevel(uint _age){
// //        require(
// //            _age>0,
// //            "Invalid age"
// //            );
// //            _;
// //    }
//     function set(string memory _name, uint _age, string memory _gender) public {
//         patientCount++;
//         info[patientCount] = Info(patientCount, _name,_age,_gender);
//         // id=_id;
//         // name = _name;
//         // age = _age;
//         // gender = _gender;
//         // patients[msg.sender].name=_name;
//     }
//     function get() public view returns(string memory _name, uint _age, string memory _gender){
//     return (info[patientCount].name, info[patientCount].age, info[patientCount].gender) ;
//     }
// }