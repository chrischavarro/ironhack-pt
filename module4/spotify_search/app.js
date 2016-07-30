$(document).on('ready', function() {

 $('.js-artist-form').on('submit', function(event) {
        event.preventDefault();

        var searchTerm = $(".js-artist-input").val();
        $.ajax({
            type: "GET",
            url: `https://api.spotify.com/v1/search?type=artist&query=${searchTerm}`,
            success: showArtists,  
            error: artistError
            })
        })

    $(".js-artist-list").on("click", ".artist-li", function(event){
        var artistId = $(event.currentTarget).data("artist-id")
        var artistName = $(event.currentTarget).data("artist-name")
        // var artistAlbums = $(event.currentTarget).data()
        
        $.ajax({
            url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
            success: function(response){
                showAlbums(response, artistName);
            },
            error: albumError
        })
    })

    function showAlbums(response, artistName){
        console.log(response)
        albums = response.items
        $(".modal-artist-name").text(artistName);
        $(".modal").modal("show");
        $(".modal-artist-albums").empty()
        albums.forEach(appendAlbum);
    }

    function appendAlbum(albums){
        var html = `
        <li>
        <h3>${albums.name}</h3>
        </li>
        `
        $(".modal-artist-albums").append(html)
    }


   

    function showArtists(response){
        // console.log("Response", response);
        var artists = response.artists.items;

        artists.forEach(appendArtist);   
    }

    function appendArtist(artist){
            var artistImage;
            if (artist.images[2]){
                artistImage = artist.images[2].url
            } else {
                artistImage = "https://placehold.it/200x200"
            }
            
            var html = `
            <li class="artist-li" data-artist-id=${artist.id} data-artist-name="${artist.name}">
            <h3>${artist.name}</h3>
            <img src=${artistImage}>
            </li>
            `

            $(".js-artist-list").append(html)

            $('.artist-li').on('click', ".artist-li", function() {
                var searchAlbum = $('.js-artist-input').val();
                function albums() { $.ajax({
                type: "GET",
                url: `https://api.spotify.com/v1/search?type=album&query=${searchAlbum}`,
                success: showAlbum,
                error: artistError    
            })}
        })
    }

    function artistError(err){
        console.log("Error!", err.responsetext);
    }

    function albumError(err){
        console.log(err);
    }
});