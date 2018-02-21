pragma solidity ^0.4.4;

import "./strings.sol";

contract HelloWorld {

  using strings for *;

  string public name = "Hello";

  function HelloWorld() {
    // constructor
  }

  function sayHello(string name) view returns(string) {
    return "Hello ".toSlice().concat(name.toSlice());
  }

}
