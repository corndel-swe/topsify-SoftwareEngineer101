-- List the names of the 10 newest albums in the database
SELECT * FROM albums
ORDER BY release_date DESC
FETCH 10 ROWS ONLY;