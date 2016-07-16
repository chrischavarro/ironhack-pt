var fs = require('fs');
function fileActions(err, file){
	if (err) {
		throw err;
	}
	var episodes = JSON.parse(file);
	var sortedEpisodes = episodes.sort(function(a, b) {
		return a.rating-b.rating
	});
	function printEpisodes(sortedEpisodes) {
		sortedEpisodes.forEach(function(episode) {
			var star = "*"
			console.log("Title: " + episode.title + " Episode: " + episode.episode_number);
			console.log(episode.description);
			console.log("Rating: " + episode.rating + (star.repeat(episode.rating)));
		});
	}

printEpisodes(sortedEpisodes)
}

fs.readFile("./Game_of_thrones.json", 'utf8', fileActions);

// i = 0

// for episodes[5]rating.each 
// 	i++ 
// end 

// for i.each 
// console.log("*")