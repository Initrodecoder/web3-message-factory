// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22 <0.9.0;

contract Messages {

    struct Message {
        uint256 id;
        string body;
    }

    Message[] public messages;

    mapping(uint256 => string) public messageIDToBody;

    function messageWrite(uint256 _id, string memory _body) public {
        messages.push(Message(_id, _body));
        messageIDToBody[_id] = _body;
    }

    function messageRead( uint256 _id ) public view returns (string memory) {
        return messageIDToBody[_id];
    }
}
