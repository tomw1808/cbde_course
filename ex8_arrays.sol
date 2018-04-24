pragma solidity ^0.4.21;

contract Arrays {
    uint256[] public uintDynamicArray;
    uint256[5] public uintFixedSizeArray;
    
    /**
     * First important function: push
     * 
     */
    function addNewElement() public {
        uintDynamicArray.push(1);
        uintFixedSizeArray[1] = 3;
    }
    
    /**
     * Second important property: length
     * 
     */
    function getLength() public view returns(uint, uint) {
        return (uintDynamicArray.length, uintFixedSizeArray.length);
    }
    
    /**
     * changing the length only works with storage Arrays
     * 
     */
    function reduceSize() public {
        uintDynamicArray.length = 1;
    }
    
}