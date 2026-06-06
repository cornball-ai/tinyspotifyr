% tinyrox says don't edit this manually, but it can't stop you!
\name{get_spotify_access_token}
\alias{get_spotify_access_token}
\title{Get Spotify Access Token}
\usage{
get_spotify_access_token(client_id = Sys.getenv("SPOTIFY_CLIENT_ID"),
                         client_secret = Sys.getenv("SPOTIFY_CLIENT_SECRET"))
}
\arguments{
\item{client_id}{Defaults to System Environment variable "SPOTIFY_CLIENT_ID"}

\item{client_secret}{Defaults to System Environment variable "SPOTIFY_CLIENT_SECRET"}
}
\value{
Returns an environment with access token data.
}
\description{
This function creates a Spotify access token.
}
\examples{
\dontrun{
get_spotify_access_token()
}
}
\keyword{auth}
