let addtoDoButton = document.getElementById('addtodo');
let toDoContainer = document.getElementById('todoContainer');
let inputfield = document.getElementById('inputfield');

addtoDoButton.addEventListener('click',function(){
    var paragraph = document.createElement('p')
    paragraph.classList.add('.paragraph-styling');
    paragraph.innerText = inputfield.value;
    toDoContainer.appendChild(paragraph);

    inputfield.value = "";
    paragraph.addEventListener('click',function(){
        paragraph.style.textDecoration = "line-through";
    })
    paragraph.addEventListener('click',function(){
        toDoContainer.removeChild(paragraph);
    })
})