pragma solidity ^0.4.21;

contract LoopsExample {
    
    function simpleForLoop() public pure returns(uint) {
        uint sum = 0;
        for(uint i = 0; i <= 256; i++) {
            sum += i;
        }
        return sum;
    }
    
    function simpleWhileLoop() public pure returns(uint) {
        uint sum = 0;
        uint i = 0;
        while(i <= 256) {
            sum += i;
            i++;
        }
        
        return sum;
    }
    
    function dangerousBounds() public pure returns(uint) {
        uint sum = 0;
        for(var i = 0; i <= 256; i++) {
            sum += i;
        }
        return sum;
    }
}