pragma solidity ^0.4.21;

/**
 * Simple Example not using iteration
 * 
 */
 
contract MappingsSimple {
    mapping(address => uint) public myMapping;
    
    function addData(address _address, uint _value) public {
        myMapping[_address] = _value;
    }
}

/**
 * Simple Example using iteration
 * 
 */
 
contract MappingsSimpleIteration {
    struct MyData {
        uint _value;
        address _address;
    }
    mapping(uint => MyData) public myMapping;
    uint public mappingSize;
    
    function addData(address _address, uint _value) public {
        myMapping[mappingSize++] = MyData(_value, _address);
    }
}


/**
 * Advanced Example using Libraries
 * 
 */

import {IterableMapping} from 'https://github.com/ethereum/dapp-bin/library/iterable_mapping.sol';

contract MappingsAdvanced {
    using IterableMapping for IterableMapping.itmap;
    IterableMapping.itmap public data;
    
    function insertValue(uint _key, uint _value) public {
        data.insert(_key, _value);
    }
}