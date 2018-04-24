pramga solidity ^0.4.21;

contract ValueTypes {

  function testIntegerDivision() public pure returns (uint256) {
    uint varOne = 5;
    uint varTwo = 2;
    return varOne/varTwo; //returns 2, not 2.5 or 3!
  }

  function testOverflow() public pure returns (uint256) {
    uint varOne; //automatically initialized with 0!
    return varOne - 1; //results in the maximum unsigned integer!
  }

  function getThisBalance() public view returns (uint256) {
    address thisContractAddress = this;
    return thisContractAddress.balance; //should return 0
  }

}
