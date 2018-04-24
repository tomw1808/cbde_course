pragma solidity ^0.4.21;

contract FallbackExample {
    uint myBalance;
    
    function payme() public payable {
        myBalance += msg.value;
    }
    
    function getBalances() public view returns(uint, uint) {
        return (address(this).balance, myBalance);
    }
    
    function () public payable {
        //shouldn't modify the state variable, because it costs gas!
    }

}

contract FallbackExample2 {
    function () public payable {
        
    }
    
    function destroyMe(address _sendEtherTo) public {
        selfdestruct(_sendEtherTo);
    }
}