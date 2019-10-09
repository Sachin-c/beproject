pragma solidity ^0.5.0;

contract Doctor{
    uint public DoctorCount = 0;
    struct DoctorInfo{
        string name;
         uint age;
        string gender;
    }
    mapping(uint=>DoctorInfo) public doctors;

    constructor() public{
        set("Sachin",20,"Male");
    }
    function set(string memory _name, uint _age, string memory _gender) public {
        DoctorCount++;
        // Doctors[msg.sender].name=_name;
        doctors[DoctorCount] = DoctorInfo(_name,_age,_gender);
    }
    function get() public view returns(uint){
    return DoctorCount;
    }
}