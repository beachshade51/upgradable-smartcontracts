// SPDX-License-Identifier: MIT

pragma solidity 0.8.10;

contract BoxV5 {
    uint public val;

    struct Person {
        string name;
        uint age;
    }

    Person[] public people;

    event logValue(string name, uint age, string message);

    function inc() external {
        val += 2;
    }

    function addPerson(string memory _name, uint _age, string memory _message) public {
        Person memory newPerson = Person(_name, _age);
        people.push(newPerson);
        emit logValue(_name, _age, _message);
    }

    function getPerson(uint _index) public view returns(string memory, uint) {
        require(_index < people.length, "invalid index");
        Person memory person = people[_index];
        return (person.name, person.age);
    }
}


// Events can be changed 
//   event logValue(string name, uint age); -> event logValue(string name, uint age, string message);

// function body can also be changed
// val += 2; -> val += 1;