--sqlite3 db/db.sqlite < queries/chart-3.sql > reports/chart-3.json

.mode json
SELECT artists.name AS artist_name, albums.name AS album_name, albums.release_date AS release_date,
AVG (features.loudness) AS average_loudness
--AVG (features.speechiness) AS average_speechiness,
--AVG (features.acousticness) AS average_acousticness,
--AVG (features.liveness) AS average_liveness
FROM artists
INNER JOIN features,tracks,albums
WHERE features.track_id = tracks.id AND tracks.album_id = albums.id AND albums.artist_id = artists.id
GROUP BY album_name