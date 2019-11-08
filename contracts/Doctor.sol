
pragma solidity ^0.5.0;
import './Patient.sol';
contract Doctor{
    uint public doctorCount = 0;
    uint public treatCount = 0;
    uint public p_id=0;
   address addressP;
    uint[]p;
    mapping(uint => Info) public info;
    mapping(uint => PatientList) public patientlist;
    struct PatientList{
        uint pid;
        string name;
        uint age;
        string gender;
        string bg;
        bytes32 medname;
        bytes32 medtype;
        bytes32 sdate;
        bytes32 edate;
        bytes32 nof;
    }
    struct Info{
    uint id;
    string name;
    uint age;
    string gender;
    }
    function WriteMedication(string memory _name, uint _age, string memory _gender, string memory _bg,string memory _medname, string memory _medtype, string memory _sdate, string memory _edate, string memory _nof ) public{
        treatCount++;
        patientlist[treatCount]=PatientList(treatCount,_name,_age,_gender,_bg,stringToBytes32(_medname),stringToBytes32(_medtype),stringToBytes32(_sdate),stringToBytes32(_edate),stringToBytes32(_nof));
        p_id=0;
    }
    function GetMedicationList(uint _id)public view returns(string memory _name,bytes32 _medname, bytes32 _medtype, bytes32 _sdate, bytes32 _edate, bytes32 _nof,uint _treatCount){
        return(patientlist[_id].name,patientlist[_id].medname,patientlist[_id].medtype,patientlist[_id].sdate,patientlist[_id].edate,patientlist[_id].nof,treatCount);
    }
    function stringToBytes32(string memory source)public view returns (bytes32 result) {
    bytes memory tempEmptyStringTest = bytes(source);
    if (tempEmptyStringTest.length == 0) {
        return 0x0;
    }
    // assembly {
    //     result := mload(add(source, 32))
    // }
}
    function setP(uint _p_id) public {
        // Patient myPatient = Patient(addressP);
        // treatCount++;
        // patientlist[treatCount]=PatientList(treatCount,_name,_age,_gender,_bg) ;
        p_id=_p_id;
    }
    function getP () external view returns(string memory _name, uint _age, string memory _gender, string memory _bg,uint _patientCount) {

        Patient myPatient =  Patient(addressP);
        return (myPatient.getall(p_id));
        // return ( patientlist[treatCount].name, patientlist[treatCount].age, patientlist[treatCount].gender, patientlist[treatCount].bg);
//       p_info[treatCount]=myPatient.getter(_idd);
    //   return(p_info[p_id].name, p_info[p_id].age, p_info[treatCount].gender,p_info[treatCount].bg);
 }
 function setAddressB(address _address) external{
     addressP=_address;
 }
 
    function set(string memory _name, uint _age, string memory _gender) public {
        doctorCount++;
        info[doctorCount] = Info(doctorCount, _name,_age,_gender);
       
    }
    function get() public view returns(string memory _name, uint _age, string memory _gender){
    return (info[doctorCount].name, info[doctorCount].age, info[doctorCount].gender) ;
    }
    function getall(uint i) public view returns(string memory _name, uint _age, string memory _gender,uint _doctorCount){
    return (info[i].name, info[i].age, info[i].gender,doctorCount); 
    }
}