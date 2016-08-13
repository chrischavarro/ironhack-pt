$('.ctrl-tournaments.actn-index').on('click', '[data-hook~=tourney-delete]', deleteTournament)

function deleteTournament(event) {
	event.preventDefault()
	var tournamentId = $(event.currentTarget).data('tournament-id')
	console.log(tournamentId)
	var request = $.ajax({
		url: `/api/tournaments/${tournamentId}`,
		type: 'DELETE',
		data: {id: tournamentId}
	});
	request.done(removeTourney)
	request.fail(function(){ console.log("Error")})
	request.always(function(){ console.log("Complete")})
}

function removeTourney(response) {
	var button = $(`*[data-tournament-id="${response.id}"`)
	var tourney = button.parent()
	tourney.remove()
}