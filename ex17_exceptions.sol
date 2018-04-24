pragma solidity ^0.4.21;

contract ExceptionExample {
    function assertFalse() public payable {
        assert(msg.value == 1 ether);
        msg.sender.transfer(1 ether);
    }
    
    function requireFalse() public payable {
        
        require(msg.value == 1 ether);
        msg.sender.transfer(1 ether);
    }
    
}