pragma solidity ^0.4.4;

contract HelloWorld {

  function HelloWorld() public {
    // constructor
  }

  function sayHello(string name) public pure returns(string) {
    return strConcat("Hello ", name);
  }


  //This is slow, might have to optimize
  function strConcat(string _a, string _b) internal pure returns (string){
    bytes memory _ba = bytes(_a);
    bytes memory _bb = bytes(_b);

    string memory ab = new string(_ba.length + _bb.length);

    bytes memory bab = bytes(ab);
    uint k = 0;
    for (uint i = 0; i < _ba.length; i++) bab[k++] = _ba[i];
    for (i = 0; i < _bb.length; i++) bab[k++] = _bb[i];
    return string(bab);
  }

}
