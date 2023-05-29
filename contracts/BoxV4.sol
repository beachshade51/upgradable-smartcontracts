// SPDX-License-Identifier: MIT

pragma solidity 0.8.10;

contract BoxV4 {
    uint public val;

    struct Person {
        string name;
        uint age;
        uint salary;
    }

    Person[] public people;

    event logValue(string name, uint age, uint salary);

    function inc() external {
        val += 2;
    }

    function addPerson(string memory _name, uint _age, uint _salary) public {
        Person memory newPerson = Person(_name, _age, _salary);
        people.push(newPerson);
        emit logValue(_name, _age, _salary);
    }

    function getPerson(uint _index) public view returns(string memory, uint, uint) {
        require(_index < people.length, "invalid index");
        Person memory person = people[_index];
        return (person.name, person.age, person.salary);
    }
}


// V4 Can't be upgraded
// Struct can't be changed

// contracts/BoxV4.sol:14: Upgraded `people` to an incompatible type
//   - In struct BoxV4.Person[]
//     - Bad upgrade from struct BoxV3.Person to struct BoxV4.Person
//   - In struct BoxV4.Person
//     - Added `salary`