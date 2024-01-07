---Задание 2---

SELECT name, duration FROM track
WHERE duration = (SELECT max(duration) FROM track);
SELECT name FROM track
WHERE duration >= '00:03:30';
SELECT name FROM collection
WHERE year_of_release BETWEEN '2018-01-01' AND '2020-12-31';
SELECT name FROM performers
WHERE name LIKE '%%';
SELECT name FROM track
WHERE name LIKE '%мой%' OR name LIKE '%my%';

---Задание 3---

SELECT name_style, count(performers_id) FROM "style" s 
JOIN performers_style ps ON s.id = ps.style_id
GROUP BY s.name_style;
SELECT a."name", count(t."name") FROM album a 
JOIN track t ON a.id = t.album_id
WHERE a.year_of_release BETWEEN '2019-01-01' AND '2020-12-31'
GROUP BY a."name";
SELECT a."name", avg(t.duration) FROM album a 
JOIN track t ON a.id = t.album_id 
GROUP BY a."name"
ORDER BY a."name";
SELECT p."name" FROM performers p 
JOIN performers_album pa ON p.id = pa.performers_id 
JOIN album a ON pa.album_id = a.id 
WHERE a.year_of_release NOT BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY p."name";
SELECT c."name" FROM collection c 
JOIN track_collection tc ON c.id = tc.collection_id 
JOIN track t ON tc.track_id = t.id 
JOIN album a ON t.album_id = a.id 
JOIN performers_album pa ON a.id = pa.album_id 
JOIN performers p ON pa.performers_id = p.id 
WHERE p."name" = 'Snoop'
GROUP BY c."name";