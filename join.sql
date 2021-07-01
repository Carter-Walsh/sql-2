-- #1
SELECT *
FROM invoice
JOIN invoice_line
ON invoice.invoice_id = invoice_line.invoice_id
WHERE unit_price > .99;

-- #2
SELECT invoice_date, first_name, last_name, total
FROM invoice
JOIN customer
ON customer.customer_id = invoice.customer_id;

-- #3 and 4
SELECT customer.first_name AS cust_first, customer.last_name AS cust_last, employee.first_name AS employee_first, employee.last_name AS employee_last
FROM customer
JOIN employee
ON customer.support_rep_id = employee.employee_id; 

-- #5
SELECT title, name 
FROM album
JOIN artist
ON album.artist_id = artist.artist_id;

-- #6
SELECT playlist_track, track_id 
FROM playlist
JOIN playlist_track 
ON playlist.playlist_id = playlist_track.playlist_id
WHERE name = 'Music';

-- #7
SELECT name
FROM track
JOIN playlist_track
ON track.track_id = playlist_track.track_id
WHERE playlist_id = 5;

-- #8
SELECT track.name, playlist.name
FROM track
JOIN playlist_track
ON track.track_id = playlist_track.track_id
JOIN playlist
ON playlist.playlist_id = playlist_track.playlist_id;

-- #9
SELECT track.name, title
FROM track
JOIN album
ON track.album_id = album.album_id
JOIN genre
ON track.genre_id = genre.genre_id
WHERE genre.name = 'Alternative & Punk';


