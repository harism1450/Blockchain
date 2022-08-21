var list = document.getElementById("todo_list")

function addtodo(){
    var inputval = document.getElementById("todo_data").value;
    var _li = document.createElement("li");
    var litext = document.createTextNode(inputval.value);
    _li.appendChild(litext);
    list.appendChild(_li);
}