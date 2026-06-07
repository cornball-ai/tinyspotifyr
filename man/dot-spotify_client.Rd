% tinyrox says don't edit this manually, but it can't stop you!
\name{.spotify_client}
\alias{.spotify_client}
\title{Spotify OAuth client}
\usage{
.spotify_client(client_id = Sys.getenv("SPOTIFY_CLIENT_ID"),
                client_secret = Sys.getenv("SPOTIFY_CLIENT_SECRET"))
}
\arguments{
\item{client_id}{Spotify client id (default env SPOTIFY_CLIENT_ID).}

\item{client_secret}{Spotify client secret (default env SPOTIFY_CLIENT_SECRET).}
}
\value{
A tinyoauth client.
}
\description{
Spotify OAuth client
}
\keyword{internal}
