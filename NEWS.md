# tinyspotifyr 0.2.3.2

* Fixed `get_shows_episodes()` sending `market` twice (in the URL and via the
  query), producing a malformed query and a Spotify "Invalid market parameter"
  400. Another migration leftover, like the get_artist()/get_album() fixes in
  0.2.3.1.

# tinyspotifyr 0.2.3.1

* Replaced the httr backend with tinyoauth (curl + jsonlite + serverSocket); Imports trimmed to tinyoauth alone. Existing httr .httr-oauth caches carry over via oauth_import_httr() (no re-login).
* Fixed pre-existing get_artist() and get_album() bugs surfaced during the migration.

