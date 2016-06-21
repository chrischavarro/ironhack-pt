// // // function eat(food) {
// // // 	console.log('Eating some ' + food);
// // // }

// // // eat('pizza');

// // // for (var i = 1; i <= 42; i++){
// // // 	console.log(i);
// // // }

// // // var i = 1

// // // while (i <= 42){
// // // 	console.log(i);
// // // 	i++;
// // // }

// var foods = ["pizza", "cookies", "bread"]
// // foods.forEach(function(food){
// // 	console.log(food);
// // })

// // // THE SAME THING

// // //  Named Style

// // function logFood(food){
// // 	console.log(food)
// // }

// // foods.forEach(logFood);

// // var capsFoods = foods.map(function(food)){
// // 	food.toUppercase();
// // }

// // console.log(capsFoods);

// var foods = [ 'pizza', 'cookies', 'bread'];

// var foodMsg = foods.reduce(function(pre,food){
// 	return pre + ' AND ' + food;

// });

// console.log(foodMsg);

// var breadless = foods.filter(function(food){
// 	return food !== "Bread"
// })

// var someVariable = "Hello";

var food = "Pizza";

if (food === "Pizza"){
	console.log("Pizza is my favorite food too!");
} else if (food === "Sushi"){
	console.log("Sushi is pretty good...");
} else {
	console.log("That's weird...");
}