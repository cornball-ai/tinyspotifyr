
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tinyspotifyr

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/tinyspotifyr?color=yellow)](https://cran.r-project.org/package=tinyspotifyr)
![](http://cranlogs.r-pkg.org/badges/tinyspotifyr?color=yellow)

## Overview

tinyspotifyr is an R wrapper for the Spotify’s Web API. It is a fork of
[spotifyr](https://cran.r-project.org/package=spotifyr) by Charlie Thompson, with minimal
dependencies inspired by the [tinyverse](https://www.tinyverse.org/). The
focus of this package is to mirror the spotify api in R.

## Installation

R version 3.2.0 (recommended)

``` r
install.packages('tinyspotifyr')
```

Development version

``` r
devtools::install_github('troyhernandez/tinyspotifyr')
```

## Authentication

First, set up a Dev account with Spotify to access their Web API
[here](https://developer.spotify.com/my-applications/#!/applications).
This will give you your `Client ID` and `Client Secret`. Once you have
those, you can pull your access token into R with
`get_spotify_access_token()`.

The easiest way to authenticate is to set your credentials to the System
Environment variables `SPOTIFY_CLIENT_ID` and `SPOTIFY_CLIENT_SECRET`.
The default arguments to `get_spotify_access_token()` (and all other
functions in this package) will refer to those. Alternatively, you can
set them manually and make sure to explicitly refer to your access token
in each subsequent function call.

``` r
Sys.setenv(SPOTIFY_CLIENT_ID = 'xxxxxxxxxxxxxxxxxxxxx')
Sys.setenv(SPOTIFY_CLIENT_SECRET = 'xxxxxxxxxxxxxxxxxxxxx')

access_token <- get_spotify_access_token()
```

#### Authorization code flow

For certain functions and applications, you’ll need to log in as a
Spotify user. To do this, your Spotify Developer application needs to
have a callback url. You can set this to whatever you want that will
work with your application, but a good default option is
`http://localhost:1410/` (see image below). For more information on
authorization, visit the offical [Spotify Developer
Guide](https://developer.spotify.com/documentation/general/guides/authorization-guide/).

<img src="man/figures/spotifyr_auth_screenshot.png" width="50%" />

## Usage

### Create a Daily Radio playlist

``` r
library(tinyspotifyr)
playlist_name <- "Daily Radio"
```

#### Get your playlists

``` r
my_playlists <- get_my_playlists(limit = 50)
```

##### Create a new playlist

Find yesterday’s Daily Radio playlist or create a new, empty playlist.

``` r
playlist_logical <- (my_playlists$name == playlist_name)
if(sum(playlist_logical) > 0){
  ind <- which(playlist_logical)
  dr <- my_playlists[ind, ]
} else {
  dr <- create_playlist("TroyHernandez", playlist_name, public = FALSE)
}
```

#### Add songs to playlist

I use my Discover Weekly playlist as a base and overwrite my existing
“Daily Radio” tracks. Using `reorder_replace_playlist_items` is more
robust for playlists than other options.

``` r
discover_weekly <- my_playlists[which(my_playlists$name == "Discover Weekly"),]
dw_tracks <- get_playlist_tracks(discover_weekly$id)
dw_uri <- dw_tracks$track.uri
reorder_replace_playlist_items(playlist_id = dr$id, uris = dw_uri)
```

#### Add podcasts to your playlist

I listen to 4 songs between each podcast. NPR updates every hour, but
sometimes it’s empty and returns an error. Notice the zero indexing.

``` r
# Add NPR
try(add_latest_to_playlist(playlist_id = dr$id, uri = "spotify:show:6BRSvIBNQnB68GuoXJRCnQ", position = 0), silent = TRUE)
# Add WBEZ
add_latest_to_playlist(playlist_id = dr$id, uri = "spotify:show:1x1n9iWJLYNXYdDgLk5yQu", position = 1)
# CBS
add_latest_to_playlist(playlist_id = dr$id, uri = "spotify:show:2pLChHUBuwElfAplwVGTdF", position = 6)
# JRE Clips
add_latest_to_playlist(playlist_id = dr$id, uri = "spotify:show:1LMmQF9PH8LjYrktU0Oq5Y", position = 7)
# Chicago Tribune
add_latest_to_playlist(playlist_id = dr$id, uri = "spotify:show:3K1ffPI9ynW3mO24A5rfbF", position = 12)
# Marketplace
add_latest_to_playlist(playlist_id = dr$id, uri = "spotify:show:6zYlX5UGEPmNCWacYUJQGD", position = 13)
# Crains
add_latest_to_playlist(playlist_id = dr$id, uri = "spotify:show:20Ut1ENH9nTy4LqWF9p8vq", position = 18)
# Planet Money
add_latest_to_playlist(playlist_id = dr$id, uri = "spotify:show:4FYpq3lSeQMAhqNI81O0Cn", position = 23)
# WSJ Tech
add_latest_to_playlist(playlist_id = dr$id, uri = "spotify:show:51MrXc7hJQBE2WJf2g4aWN", position = 28)
# Useful idiots
add_latest_to_playlist(playlist_id = dr$id, uri = "spotify:show:5BpYXlVorOw5FZ9pfpu7ff", position = 33)
# Chicago Tonight to the end of the podcast
add_latest_to_playlist(playlist_id = dr$id, uri = "spotify:show:2WuB3zkmXGo7sJUZ6GQIx3")
```

I run this as a cron job every morning with some extra tweaks.
