var mass = [];
var numbers = [];


function add () {
    var divider = document.getElementById('divider').value ;
    if(!mass[0]){
        mass.push(divider);
    }
    var pos = document.getElementById('positive').value;
    var neg = document.getElementById('negative').value;
    var val = document.getElementById('positive');
    if(val.checked) {
        if(!mass[1]){
            mass.push(pos);
        }
    }
    else {
        if(!mass[1]){
            mass.push(neg);
        }
    }
    var minBound = document.getElementById('min').value;
    if(!mass[2]){
        mass.push(minBound);
    }
    var maxBound = document.getElementById('max').value;
    if(!mass[3]){
        mass.push(maxBound);
    }
    var number = document.getElementById('number').value;
    numbers.push(number);
    mass.push(numbers[numbers.length-1]);
    var allTo = mass;
    document.getElementById('allIn').value = allTo;
    alert(document.getElementById('allIn').value);

}

