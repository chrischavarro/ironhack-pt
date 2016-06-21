var exampleArray = [ "pizza", 
					 "hot dog", 
					 "pizza", 
					 "ice cream", 
					 "fish", 
					 "steak", 
					 "oranges"];

function findOccurrences(array, wordToLookFor){
	var totalOccurrences = 0;

	array.forEach(function(word){
		if (word === wordToLookFor){
			totalOccurrences++;
		}
	});

	return totalOccurrences

}

var count = findOccurrences(exampleArray, "pizza");
console.log(count);