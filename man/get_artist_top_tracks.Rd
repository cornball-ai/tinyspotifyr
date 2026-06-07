% tinyrox says don't edit this manually, but it can't stop you!
\name{get_artist_top_tracks}
\alias{get_artist_top_tracks}
\title{Get Spotify catalog information about an artist’s top tracks by country.}
\usage{
get_artist_top_tracks(id, market = "US",
                      authorization = get_spotify_access_token(),
                      include_meta_info = FALSE)
}
\arguments{
\item{id}{The \href{https://developer.spotify.com/documentation/web-api/#spotify-uris-and-ids}{Spotify ID} for the artist.}

\item{market}{Required. \cr
An ISO 3166-1 alpha-2 country code or the string \code{"from_token"}.
Defaults to \code{"US"}.}

\item{authorization}{Required. A valid access token from the Spotify Accounts service. See the \href{https://developer.spotify.com/documentation/general/guides/authorization-guide/}{Web API authorization guide} for more details. Defaults to \code{spotifyr::get_spotify_access_token()}}

\item{include_meta_info}{Optional. Boolean indicating whether to include full result, with meta information such as \code{"total"}, and \code{"limit"}. Defaults to \code{FALSE}.}
}
\value{
Returns a data frame of results containing artist data. See \url{https://developer.spotify.com/documentation/web-api} for more information.
}
\description{
Get Spotify catalog information about an artist’s top tracks by country.
}
