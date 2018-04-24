pragma solidity ^0.4.21;

contract StringComparison {
    string myString = "abc";
    
    function isSimilar(string compareString) public view returns (bool) {
        return keccak256(myString) == keccak256(compareString);
    }
    
}