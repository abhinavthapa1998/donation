// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract coffee {
    struct Memo {
        string name;
        string message;
        uint256 timestamp;
        address from;
    }

    Memo[] memos;
}
