--sqlite3 db/db.sqlite < queries/tracks.sql > reports/tracks.json
--reports/tracks.json
.mode json
SELECT * FROM tracks