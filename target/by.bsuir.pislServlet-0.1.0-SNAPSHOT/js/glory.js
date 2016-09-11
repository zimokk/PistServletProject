var mass = [];
var numbers = [];


function add () {
    var number = document.getElementById('number').value;
    if(number){
        numbers.push(number);
        mass.push(numbers[numbers.length-1]);
        var allTo = mass;
        document.getElementById('allIn').value = allTo;
    }
}

