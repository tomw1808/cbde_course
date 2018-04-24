pragma solidity ^0.4.21;

contract ViewPure {
    uint myVar = 5;
    
    function setMyVar(uint _myVar) public {
        myVar = _myVar;
    }
    
    function getMyVar() public view returns (uint) {
        return myVar;
    }
    
    function aPureFunction(uint _myVar) public pure returns (uint) {
        return 5*_myVar;
    }
    
    function getMyVarTimesFive() public view returns(uint) {
        return aPureFunction(myVar);
    }
    
}