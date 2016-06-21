var numbers = '80:70:90:100';

function averageColon(numbers){
	// var bigglesworth = numbers.length;
	var filbert = numbers.split(":");
	var georgina = filbert.reduce(function(num1,num) {
		
		return parseInt(num1) + parseInt(num);
	})

return georgina/filbert.length
}


fredson = averageColon(numbers);
console.log(fredson);