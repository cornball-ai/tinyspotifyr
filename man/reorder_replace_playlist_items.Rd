% tinyrox says don't edit this manually, but it can't stop you!
\name{reorder_replace_playlist_items}
\alias{reorder_replace_playlist_items}
\title{Reorder or replace one or more items from a user’s playlist.}
\usage{
reorder_replace_playlist_items(playlist_id, uris,
                               authorization = get_spotify_authorization_code())
}
\arguments{
\item{playlist_id}{Required. The \href{https://developer.spotify.com/documentation/web-api/#spotify-uris-and-ids}{Spotify ID} for the playlist.}

\item{uris}{Optional. A character vector of \href{https://developer.spotify.com/documentation/web-api/#spotify-uris-and-ids}{Spotify track URIs} to add. For example \cr
\code{uris = "spotify:track:4iV5W9uYEdYUVa79Axb7Rh", "spotify:track:1301WleyT98MSxVHPZCA6M"} \cr
A maximum of 100 tracks can be removed in one request.}

\item{authorization}{Required. A valid access token from the Spotify Accounts service. See the \href{https://developer.spotify.com/documentation/general/guides/authorization-guide/}{Web API authorization Guide} for more details. Defaults to \code{spotifyr::get_spotify_authorization_code()}. The access token must have been issued on behalf of the current user. \cr
Removing tracks to the current user’s public playlists requires authorization of the \code{playlist-modify-public} scope; removing tracks from the current user’s private playlist (including collaborative playlists) requires the \code{playlist-modify-private} scope. See \href{https://developer.spotify.com/documentation/general/guides/authorization-guide/#list-of-scopes}{Using Scopes}.}
}
\value{
No return value. Tracks are added or reordered on playlist.
}
\description{
Reorder or replace one or more items from a user’s playlist.
}
