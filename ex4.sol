pragma solidity ^0.4.21;

import './importing_from.sol';

import {A as MyContractA} from './importing_from.sol';

import "https://github.com/OpenZeppelin/zeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";

contract MyContract is ERC721Token {
    
    function MyContract() public {
        MyContractA contractA = new MyContractA();
        contractA.myVarA();
    }
   
}