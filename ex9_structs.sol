pragma solidity ^0.4.21;

contract Structs {
   struct myStruct {
       uint myUint;
       string myString;
   }
   
   myStruct public myVariable;
   myStruct[] public myStructArray;
   
   function setMyVariable(uint _myUint, string _myString) public {
       myVariable.myUint = _myUint;
       myVariable.myString = _myString;
   }
   
   function setMyStructArray(uint _myUint, string _myString) public {
       myStructArray.push(myStruct(_myUint, _myString));
   }
   
   /**
    * This following does not work:
    * 
    */
   //function getStruct() public view returns (myStruct) { ...   }
    
}