% tinyrox says don't edit this manually, but it can't stop you!
\name{get_my_devices}
\alias{get_my_devices}
\title{Get information about a user’s available devices.}
\usage{
get_my_devices(authorization = get_spotify_authorization_code())
}
\arguments{
\item{authorization}{Required. A valid access token from the Spotify Accounts service. See the \href{https://developer.spotify.com/documentation/general/guides/authorization-guide/}{Web API authorization Guide} for more details. Defaults to \code{spotifyr::get_spotify_access_token()}. The access token must have been issued on behalf of the current user. \cr
The access token must have the \code{user-read-playback-state} scope authorized in order to read information.}
}
\value{
Returns a data frame of results containing user device information. See the official Spotify Web API \href{https://developer.spotify.com/documentation/web-api}{documentation} for more information.
}
\description{
Get information about a user’s available devices.
}
