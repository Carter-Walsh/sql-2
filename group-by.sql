-- #1
SELECT COUNT(track_id), genre.name
FROM track
JOIN genre
ON track.genre_id = genre.genre_id
GROUP BY genre.name;

-- #2
SELECT genre.name, COUNT(*)
FROM track
JOIN genre
ON track.genre_id = genre.genre_id
WHERE genre.name = 'Pop' OR genre.name = 'Rock'
GROUP BY genre.genre_id;

-- #3
SELECT name, COUNT(title)
FROM artist
JOIN album
ON artist.artist_id = album.artist_id
GROUP BY name;