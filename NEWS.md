# tinyspotifyr 0.2.3.1

* Replaced the httr backend with tinyoauth (curl + jsonlite + serverSocket); Imports trimmed to tinyoauth alone. Existing httr .httr-oauth caches carry over via oauth_import_httr() (no re-login).
* Fixed pre-existing get_artist() and get_album() bugs surfaced during the migration.

