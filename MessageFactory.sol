// SPDX-License-Identifier: MIT


pragma solidity >=0.4.22 <0.9.0;

import "./Messages.sol";

contract MessageFactory {

    Messages[] public messagesArray;

    function createMessagesContract() public {
        Messages messages = new Messages();
        messagesArray.push(messages);
    }

    function messageWrite(uint256 _messagesIndex, uint256 _id, string memory message) public {
        messagesArray[_messagesIndex].messageWrite(_id, message);
    }

    function messageRead(uint256 _messagesIndex, uint256 _id) public view returns (string memory) {
        return messagesArray[_messagesIndex].messageRead(_id);
    } 

}
