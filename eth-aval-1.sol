/ SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UpdatedErrorHandling {

  mapping(address => uint) public balances;
  address public expectedAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

  function deposit(uint _amount) public {
    balances[msg.sender] += _amount;
  }

  function withdrawRequire(uint _amount) public {
    require(msg.sender == expectedAddress, "Unauthorized address");
    require(balances[msg.sender] >= _amount, "Insufficient balance");
    balances[msg.sender] -= _amount;
  }

  function withdrawAssert(uint _amount) public {
    assert(msg.sender == expectedAddress);
    assert(balances[msg.sender] >= _amount);
    balances[msg.sender] -= _amount;
  }

  function withdrawRevert(uint _amount) public {
    if (msg.sender != expectedAddress) {
      revert("Unauthorized address");
    }
    if (balances[msg.sender] < _amount) {
      revert("Insufficient balance");
    }
    balances[msg.sender] -= _amount;
  }

  function setExpectedAddress(address _newExpectedAddress) public {
    expectedAddress = _newExpectedAddress;
  }
}
