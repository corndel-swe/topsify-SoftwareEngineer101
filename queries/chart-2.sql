-- sqlite3 db/db.sqlite < queries/chart-2.sql > reports/chart-2.json

.mode json
SELECT (artists.name) AS artist_name, (albums.name) AS album_name,
AVG(features.danceability) AS average_danceability,
AVG (features.energy) AS average_energy,
AVG (features.speechiness) AS average_speechiness,
AVG (features.acousticness) AS average_acousticness,
AVG (features.liveness) AS average_liveness
FROM artists
INNER JOIN features, tracks,albums WHERE features.track_id = tracks.id AND tracks.album_id = albums.id AND albums.artist_id = artists.id
GROUP BY albums.id
