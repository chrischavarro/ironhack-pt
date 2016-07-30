$(document).on('ready', function() {

    $('#form').on('submit', function(event) {
        event.preventDefault();
        $('.progress_bar').empty()
        $('.js-player').trigger('pause');

        var search_term = $('#search_term').val();
        $.ajax({
            type: "GET",
            url: `https://api.spotify.com/v1/search?q=${search_term}&type=track`,
            success: function(response) {
      			var songs = response.tracks.items[0]
                songList(songs)
                showMore(response)
            },
            error: function(error){
                console.log("Something went wrong")
                console.log(error)
                }
            })
        })

    $('.btn-play').on('click', function(){
        if ($('.btn-play').hasClass("playing")){
            $('.js-player').trigger('pause');
        } else {
            $('.js-player').trigger('play');
        }
        
        $('.btn-play').toggleClass('playing');
        // if ('.js-player'.paused == false){
        //     $('.js-player').trigger('play');
        // } else {
        //     $('.js-player').trigger('pause');
        // }   
    })

    $('.author').on('click', '.artist_link', function(event) {
        var artistId = $(event.currentTarget).data("artist-id")
        var artistName = $(event.currentTarget).data("artist-name")
        $.ajax({
            type: "GET",
            url: `https://api.spotify.com/v1/artists/${artistId}`,
            success: function(response){
                // $('.modal-body').empty()

                showArtist(response, artistName);
            },
            error: console.log("Bye")
        })
    })

    $('.modal-all-songs').on('click', '.song_link', function(event) {
        var songId = $(event.currentTarget).data("artist-song")
        // console.log(extraSong)

        $.ajax({
            type: "GET",
            url: `https://api.spotify.com/v1/tracks/${songId}`,
            success: function(response){
                songList(response)
            },
            error: console.log("Derp")
        })
    })

    $('.see_more').on('click', function(){
        $('#see-more').modal('show');
    })
});

function showMore(response) {
    // console.log(moreSongs)
    var moreSongs = response.tracks.items;
    moreSongs.forEach(addSongs);
}

function addSongs(song) {
    var newSong = `
    <li class="new-song">
    <h4 class="song_link" data-artist-song="${song.id}">${song.name}</h4>
    </li>
    `
    $('.modal-all-songs').append(newSong)
}

function showArtist(response, artistName) {
    // console.log(response)
    var artist = response
    var followers = artist.followers.total
    var image = artist.images[2].url
    var genre = artist.genres[0]
    var popularity = artist.popularity

    $('.modal-artist-name').text(artistName);
    $('.modal').modal('show');
    $('.modal-artist-image').attr('src', image);
    $('.modal-artist-genre').append(genre);
    $('.modal-artist-popularity').append(popularity);
    $('.modal-artist-followers').append(followers);
}

function songList(song) {
    console.log(song)
    var name = `${song.name} `;
    var artists = `<p class="artist_link" 
        data-artist-id="${song.artists[0].id}" 
        data-artist-name="${song.artists[0].name}">
        ${song.artists[0].name}
        </p> `;
    var covers = `${song.album.images[0].url}`;
    var preview = `${song.preview_url}`;
    $('.title').html(name);
    $('.author').html(artists);
    $('.covers').attr('src', covers);
    $('#audio').attr('src', preview);
};

function printTime() {
    var current = $('.js-player').prop('currentTime');

    $('.progress_bar').attr('value', current);
}

$('.js-player').on('timeupdate', printTime);


    
