pragma solidity ^0.4.21;

contract Ex3 {
    uint x = 0;
    function functionCall() view public {
        uint j = 0;
        for(uint i = 0; i <= 3500; i++) {
            j = address(this).balance;
        }
    }
    
    function functionTransaction() public {
        for(uint i = 0; i <= 2500; i++) {
            x = address(this).balance;
        }
    }
}