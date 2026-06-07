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
\item{client_id}{Defaults to system environment variable "SPOTIFY_CLIENT_ID"}

\item{client_secret}{Defaults to system environment variable "SPOTIFY_CLIENT_SECRET"}

\item{scope}{Spotify scopes; all are requested by default.}
}
\value{
A tinyoauth token (carries the access and refresh tokens).
}
\description{
Obtains a user-authorized token via the authorization-code grant, with
caching and refresh. If a legacy httr \code{.httr-oauth} file is present, its
authorization is carried over (refreshed) so no new browser login is needed.
}
\examples{
\dontrun{
get_spotify_authorization_code()
}
}
\keyword{auth}
