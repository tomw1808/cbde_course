pragma solidity ^0.4.21;

contract Ex1 {
    function spreadMoney() public payable {
        uint256 everything = msg.value;
        address one = 0x72cFFF5d43c02a0f940a48e0d2e36D687fB99cb4;
        address two = 0xF279D4133F25527B3d10756351A3726f7f5E2Ade;
        address three = 0x56A7e1d5311d8F4500AdB3B503041cbc9F2e2a1A;
        one.transfer(everything / 3);
        two.transfer(everything / 3);
        three.transfer(everything / 3);
    }
}