// SPDx-License-Identifier:unlicensed
pragma solidity ^0.8.15;

contract ToDoApp{
    uint8 count = 0;

    mapping (uint => ToDoList) public a;

    struct ToDoList{
        string todo;
    }

    function addToDo(string memory _todo) public {
        count++;
        a[count] = ToDoList(_todo);
    }
    function updateToDo(string memory _todo, uint _id) public {
        a[_id] = ToDoList(_todo);
    }
    function deleteToDo(uint _id) public{
        a[_id] = ToDoList("");
    }
    function deleteAllToDo() public {
        for(uint8 i = 1; i <= count; i++){
            a[count] = ToDoList("");
        }
    }
}
