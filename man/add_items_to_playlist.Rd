% tinyrox says don't edit this manually, but it can't stop you!
\name{add_items_to_playlist}
\alias{add_items_to_playlist}
\title{Add one or more tracks to a user’s playlist.}
\usage{
add_items_to_playlist(playlist_id, uris, position = NULL, market = "US",
                      authorization = get_spotify_authorization_code())
}
\arguments{
\item{playlist_id}{Required. The \href{https://developer.spotify.com/documentation/web-api/#spotify-uris-and-ids}{Spotify ID} for the playlist.}

\item{uris}{Optional. A character vector of \href{https://developer.spotify.com/documentation/web-api/#spotify-uris-and-ids}{Spotify track URIs} to add. For example \cr
\code{uris = "spotify:track:4iV5W9uYEdYUVa79Axb7Rh", "spotify:track:1301WleyT98MSxVHPZCA6M"} \cr
A maximum of 100 tracks can be added in one request.}

\item{position}{Optional. Integer indicating the position to insert the tracks, a zero-based index. For example, to insert the tracks in the first position: \code{position = 0}; to insert the tracks in the third position: \code{position = 2} . If omitted, the tracks will be appended to the playlist. Tracks are added in the order they are listed in the query string or request body.}

\item{market}{Optional for music. Required for podcasts episodes. \cr
An ISO 3166-1 alpha-2 country code or the string \code{"from_token"}. Provide this parameter if you want to apply \href{https://developer.spotify.com/documentation/general/guides/track-relinking-guide/}{Track Relinking}}

\item{authorization}{Required. A valid access token from the Spotify Accounts service. See the \href{https://developer.spotify.com/documentation/general/guides/authorization-guide/}{Web API authorization Guide} for more details. Defaults to \code{spotifyr::get_spotify_authorization_code()}. The access token must have been issued on behalf of the current user. \cr
Adding tracks to the current user’s public playlists requires authorization of the \code{playlist-modify-public} scope; adding tracks to the current user’s private playlist (including collaborative playlists) requires the \code{playlist-modify-private} scope. See \href{https://developer.spotify.com/documentation/general/guides/authorization-guide/#list-of-scopes}{Using Scopes}.}
}
\value{
No return value. Items added to playlist.
}
\description{
Add one or more tracks to a user’s playlist.
}
