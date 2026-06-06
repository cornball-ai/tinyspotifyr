% tinyrox says don't edit this manually, but it can't stop you!
\name{get_shows}
\alias{get_shows}
\title{Get Spotify catalog information for a single show identified by their unique Spotify ID.}
\usage{
get_shows(ids, market = "US", authorization = get_spotify_access_token())
}
\arguments{
\item{ids}{Required. A comma-separated list of the Spotify IDs for the shows. Maximum: 50 IDs.}

\item{market}{Required. \cr
An ISO 3166-1 alpha-2 country code or the string \code{"from_token"}. \cr
Supply this parameter to limit the response to one particular geographical market. For example, for albums available in Sweden: \code{market = "SE"}. \cr
If not given, results will be returned for all markets and you are likely to get duplicate results per album, one for each market in which the album is available!}

\item{authorization}{Required. A valid access token from the Spotify Accounts service. See the \href{https://developer.spotify.com/documentation/general/guides/authorization-guide/}{Web API authorization Guide} for more details. Defaults to \code{spotifyr::get_spotify_access_token()}}
}
\value{
Returns a data frame of results containing show data. See \url{https://developer.spotify.com/documentation/web-api/reference/shows/get-a-show/} for more information.
}
\description{
Get Spotify catalog information for a single show identified by their unique Spotify ID.
}
