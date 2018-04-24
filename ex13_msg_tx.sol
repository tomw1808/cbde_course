pragma solidity ^0.4.21;

contract MsgTx {
    function MsgTx() public {
        MsgTxCalled secondContract = new MsgTxCalled();
        secondContract.callMe();
    }
}

contract MsgTxCalled {
    event MyLog(address _callerMsg, address _callerTx);
    
    function callMe() public {
        emit MyLog(msg.sender, tx.origin);
    }
}

