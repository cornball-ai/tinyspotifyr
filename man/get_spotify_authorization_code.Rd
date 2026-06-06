% tinyrox says don't edit this manually, but it can't stop you!
\name{get_spotify_authorization_code}
\alias{get_spotify_authorization_code}
\title{Get Spotify authorization Code}
\usage{
get_spotify_authorization_code(client_id = Sys.getenv("SPOTIFY_CLIENT_ID"),
                               client_secret = Sys.getenv("SPOTIFY_CLIENT_SECRET"),
                               scope = tinyspotifyr::scopes)
}
\arguments{
\item{client_id}{Defaults to System Envioronment variable "SPOTIFY_CLIENT_ID"}

\item{client_secret}{Defaults to System Envioronment variable "SPOTIFY_CLIENT_SECRET"}

\item{scope}{Space delimited string of spotify scopes, found here: https://developer.spotify.com/documentation/general/guides/scopes/. All scopes are selected by default}
}
\value{
Returns an environment with access token data.
}
\description{
This function creates a Spotify access token.
}
\examples{
\dontrun{
get_spotify_authorization_code()
}
}
\keyword{auth}
