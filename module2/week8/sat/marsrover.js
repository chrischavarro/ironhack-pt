// var mars = new Array(10).fill(new Array(10));

var mars = new Array();
for (var i=0; i<10; i++) {
	mars[i] = new Array(10);
}

mars[5][0] = "Meteor";
// mars[2][8] = "Puppy";
// mars[9][9] = "Josh";
// mars[5][5] = "FUCKIN MOON";
// mars[4][2] = "Lamborghini Leglock";

var Rover = {
	position: [4,0],
	direction: 'N',
	name: 'Rover'
}

// Up
function goForward(rover) {

	var oldPosition = rover.position.slice(0);
	var x = rover.position[1];
	var y = rover.position[0];

	// oldPosition = rover.position
	switch(rover.direction) {
		case 'N' :
		if(!(mars[y + 1][x])){
			rover.position[0]++}
		// else {
		// 	y
		// }
			break; 
		case 'S' :
		if(!(mars[y - 1][x])){
			rover.position[0]--}
		// else {
		// 	y
		// }
			break; 
		case 'E' :
		if(!(mars[y][x + 1])){
			rover.position[1]++}
		// else {
		// 	x
		// }
			break; 
		case 'W' :
		if(!(mars[y][x - 1])){
			rover.position[1]--}
		// else {
		// 	x
		// }
			break;
	}

	// mars[[oldPosition[0]][oldPosition[1]]] = undefined
	mars[[rover.position[0]][rover.position[1]]] = Rover.name;
}
// Down
function goBackward(rover) {

	var oldPosition = rover.position.slice(0);

	switch(rover.direction) {
		case 'N' :
		if(mars[y - 1][x]){
			y--}
		// else {
		// 	y
		// }
			break;
		case 'S' :
		if(mars[y + 1][x]){
			y++}
		// else {
		// 	y
		// }
			break;
		case 'E' :
		if(mars[y][x - 1]){
			x--}
		// else {
		// 	x
		// }
			break;
		case 'W' :
		if(mars[y][x + 1]){
			x++}
		// else {
		// 	x
		// }
			break;
	}

	// mars[[oldPosition[0]][oldPosition[1]]] = undefined;
	mars[[rover.position[0]][rover.position[1]]] = Rover.name;
}

// Right
function goEast(rover) {
	switch(rover.direction) {
		case 'E' :
			rover.direction = 'S'
			break;
		case 'W' :
			rover.direction = 'N'
			break;
		case 'N' :
			rover.direction = 'E'
			break;
		case 'S' :
			rover.direction = 'W'
			break;
	}
}

// Left
function goWest(rover) {
	switch(rover.direction) {
		case 'W' :
			rover.direction = 'S'
			break;
		case 'E' :
			rover.direction = 'N'
			break;
		case 'N' :
			rover.direction = 'W'
			break;
		case 'S' :
			rover.direction = 'E'
			break;
	}
}

function move(rover_name, commands) {
	tim = commands.split("");
	tim.forEach(function(move) {
		if(move === 'f') {
			goForward(rover_name);
		} 
		else if(move === 'r') {
			goEast(rover_name);
		}
		else if(move === 'l') {
			goWest(rover_name);
		}
		else if(move === 'b') {
			goBackward(rover_name);
		}
	});
	return rover_name.position
}


console.log(move(Rover, 'fff'))
// console.log(move(Rover, 'ffflbbbbrbbbbbbbbbbbbb'))
// console.log(mars)

// var marsRover = {
// 	mars[Rover.position[0][Rover.position[0]]];
// }

