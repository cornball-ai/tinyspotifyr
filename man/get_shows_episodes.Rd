% tinyrox says don't edit this manually, but it can't stop you!
\name{get_shows_episodes}
\alias{get_shows_episodes}
\title{Get Spotify catalog information for a show's episodes identified by their unique Spotify ID.}
\usage{
get_shows_episodes(id, market = "US", authorization = get_spotify_access_token())
}
\arguments{
\item{id}{The \href{https://developer.spotify.com/documentation/web-api/#spotify-uris-and-ids}{Spotify ID} for the show.}

\item{market}{Required. \cr
An ISO 3166-1 alpha-2 country code or the string \code{"from_token"}. \cr
Supply this parameter to limit the response to one particular geographical market. For example, for albums available in Sweden: \code{market = "SE"}. \cr
If not given, results will be returned for all markets and you are likely to get duplicate results per album, one for each market in which the album is available!}

\item{authorization}{Required. A valid access token from the Spotify Accounts service. See the \href{https://developer.spotify.com/documentation/general/guides/authorization-guide/}{Web API authorization Guide} for more details. Defaults to \code{spotifyr::get_spotify_access_token()}}
}
\value{
Returns a data frame of results containing the episode data for a show. See \url{https://developer.spotify.com/documentation/web-api} for more information.
}
\description{
Get Spotify catalog information for a show's episodes identified by their unique Spotify ID.
}
