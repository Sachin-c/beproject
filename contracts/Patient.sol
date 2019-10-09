pragma solidity ^0.5.0;

contract Patient{
    uint public patientCount = 0;
    struct PatientInfo{
        string name;
         uint age;
        string gender;
    }
    mapping(uint=>PatientInfo) public patients;

    constructor() public{
        set("Sachin",20,"Male");
    }
    function set(string memory _name, uint _age, string memory _gender) public {
        patientCount++;
        // patients[msg.sender].name=_name;

        patients[patientCount] = PatientInfo(_name,_age,_gender);
    }
    function get() public view returns(uint){
    return patientCount;
    }
}