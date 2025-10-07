-- sqlite3 db/db.sqlite < queries/chart-1.sql > reports/chart-1.json


.mode json
SELECT artists.name AS artist_name, COUNT(albums.artist_id) AS explicit_track_count
FROM artists
INNER JOIN tracks,albums WHERE tracks.album_id = albums.id AND albums.artist_id = artists.id AND tracks.explicit = 1
GROUP BY artist_name
ORDER BY explicit_track_count DESC
