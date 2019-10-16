pragma solidity ^0.5.0;

contract Patient{
    uint public patientCount = 0;
    string name;
    uint age;
    string gender;
//    modifier checkLevel(uint _age){
//        require(
//            _age>0,
//            "Invalid age"
//            );
//            _;
//    }
    function set(string memory _name, uint _age, string memory _gender) public {
        patientCount++;
        name = _name;
        age = _age;
        gender = _gender;
        // patients[msg.sender].name=_name;
    }
    function get() public view returns(string memory, uint, string memory){
    return (name, age, gender) ;
    }
}