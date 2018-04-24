pragma solidity ^0.4.21;

contract CallDelegatecallExample {
 
 uint public myVariable = 6;
 
 function callExample(address _contract, uint newVar) public {
     _contract.call(bytes4(keccak256("updateMyVariable(uint256)")), newVar);
 }
 
 function delegatecallExample(address _contract, uint newVar) public {
     _contract.delegatecall(bytes4(keccak256("updateMyVariable(uint256)")), newVar);
 }
    
}

contract CalledContract {
    uint public myVariable = 5;
    
    function updateMyVariable(uint newVar) public payable {
        myVariable = newVar;
    }
    
}