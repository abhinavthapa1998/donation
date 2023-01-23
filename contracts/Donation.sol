// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract coffee {
    address payable owner;
    struct Memo {
        string name;
        string message;
        uint256 timestamp;
        address from;
    }

    Memo[] memos;

    constructor() {
        owner = payable(msg.sender);
    }

    function buyCoffee(string memory name, string memory message)
        public
        payable
    {
        require(msg.value > 0, "Amount should be greater than 0");
        owner.transfer(msg.value);
        memos.push(Memo(name, message, block.timestamp, msg.sender));
    }

    function getMemos() public view returns (Memo[] memory) {
        return memos;
    }
}
