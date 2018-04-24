pragma solidity ^0.4.21;

contract SendTransferExample {
    
    event SentEvent(address _receiver);
    
    function useSend(address _receiver) public {
        if(_receiver.send(0.1 ether)== true) {
            emit SentEvent(_receiver);
        } else {
            //do something because it failed
        }
    }
    
    function useTransfer(address _receiver) public {
        _receiver.transfer(0.1 ether);
        emit SentEvent(_receiver);
    }
    
    function() public payable {
    }
}

contract SendTransferWillFail {
    
    uint someVar = 0;
    function() public payable {
        someVar = address(msg.sender).balance;
        someVar = someVar -500;
    }
}

contract SendTransferWillSucceed {
    function() public payable {
        
    }
}