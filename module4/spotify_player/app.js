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
                currentSong(songs)
                showMore(response)
            },
            error: function(error){
                console.log("Something went wrong")
                console.log(error)
                }
            })
        })

    $('.btn-play').on('click', function(){
        checkPlay()
    })

    $('.author').on('click', '.artist_link', function(event) {
        var artistId = $(event.currentTarget).data("artist-id")
        var artistName = $(event.currentTarget).data("artist-name")
            // $('#artist-info').empty()

        $.ajax({
            type: "GET",
            url: `https://api.spotify.com/v1/artists/${artistId}`,
            success: function(response){
                showArtist(response, artistName);
            },
            error: console.log("Bye")
        })
    })

    $('.modal-all-songs').on('click', '.song_link', function(event) {
        var songId = $(event.currentTarget).data("artist-song")
        checkPlay()

        $.ajax({
            type: "GET",
            url: `https://api.spotify.com/v1/tracks/${songId}`,
            success: function(response){
                $('.progress_bar').attr('value', '0');
                currentSong(response)
                $('#see-more').modal('hide')
            },
            error: console.log("Derp")
        })
    })

    $('.see_more').on('click', function(){
        $('#see-more').modal('show');
    })

    $('.modal-artist-see-albums').on('click', function(event){
        var artistId = $(event.currentTarget).data("artist-id")
        var artistName = $(event.currentTarget).data("artist-name")
        
        $('#artist-albums').modal('show');

        $.ajax({
            type: "GET",
            url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
            success: function(response){
                showAlbums(response, artistName);
            },
            error: console.log("Derp")
        })
    })
});

// FUNCTIONS

function checkPlay(){
    if ($('.btn-play').hasClass("playing")){
        $('.js-player').trigger('pause');
    } else {
        $('.js-player').trigger('play');
    }

    $('.btn-play').toggleClass('playing');
}

function showMore(response) {
    // console.log(moreSongs)
    var moreSongs = response.tracks.items;
    $('.modal-all-songs').empty()
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

function showAlbums(response, artistName) {
    var albums = response.items;
    $('.modal-artist-albums').empty()
    albums.forEach(appendAlbums)
}

function appendAlbums(album) {
    var albumImage;
    if (album.images[1]){
        albumImage = album.images[1].url
    } else {
        albumImage = "https://placehold.it/200x200"
    }

    var html = `
    <li>
    <h4>${album.name}<h4>
    <img src="${albumImage}">
    
    </li>
    `
    $(".modal-artist-albums").append(html)

}

function showArtist(response, artistName) {
    // console.log(response)
    var artist = response
    var followers = artist.followers.total
    var image = artist.images[2].url
    var genre = artist.genres[0]
    var popularity = artist.popularity
    var albums = `See ${artistName}'s albums`


    $('.modal-artist-name').text(artistName);
    $('#artist-info').modal('show');
    $('.modal-artist-image').attr('src', image);
    $('.modal-artist-genre').text(genre);
    $('.modal-artist-popularity').text(popularity);
    $('.modal-artist-followers').text(followers);
    $('.modal-artist-see-albums').text(albums);
    $('.modal-artist-see-albums').data('artist-id', artist.id)
    $('.modal-artist-see-albums').data('artist-name', artist.name)

    // $('.modal-artist-see-albums').attr({
    //     'data-artist-id': artist.id,
    //     'data-artist-name': artist.name
    // });
}

function currentSong(song) {
    // console.log(song)
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


    
