% tinyrox says don't edit this manually, but it can't stop you!
\name{get_spotify_access_token}
\alias{get_spotify_access_token}
\title{Get Spotify Access Token}
\usage{
get_spotify_access_token(client_id = Sys.getenv("SPOTIFY_CLIENT_ID"),
                         client_secret = Sys.getenv("SPOTIFY_CLIENT_SECRET"))
}
\arguments{
\item{client_id}{Defaults to system environment variable "SPOTIFY_CLIENT_ID"}

\item{client_secret}{Defaults to system environment variable "SPOTIFY_CLIENT_SECRET"}
}
\value{
An access token string.
}
\description{
Creates a Spotify access token via the client-credentials grant (app-only).
}
\examples{
\dontrun{
get_spotify_access_token()
}
}
\keyword{auth}
