function buildTourneyHtml (tournament) {
  return `
	<li class="tournament">
		<a href="/tournaments/${tournament.id}">${tournament.name}</a>
		<button data-hook="tourney-delete" type="submit" name="tournament" data-tournament-id="${tournament.id}">DELETE</button>
  	</li>
  `
}
