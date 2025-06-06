// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructExample {

    struct Person {
        string name;
        uint age;
    }

    Person[] public people;

    // Shton një person të ri
    function addPerson(string memory _name, uint _age) public {
        people.push(Person(_name, _age));
    }

    // Rikthen një person nga vargu në memory
    function getPersonInMemory(uint index) public view returns (Person memory) {
        return people[index];
    }

    // Ndryshon emrin e një personi duke përdorur referencë në storage
    function updatePersonName(uint index, string memory newName) public {
        Person storage p = people[index];
        p.name = newName;
    }
}
