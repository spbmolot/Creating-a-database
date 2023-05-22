--Название и продолжительность самого продолжительного трека.
SELECT name, duration
FROM track
WHERE duration = (SELECT max(duration) FROM track);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT name, duration
FROM track
WHERE duration >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год ограниченно.
SELECT name
FROM collection
WHERE year_of_release BETWEEN DATE '2018-01-01' AND DATE '2020-12-31';

--Исполнители, чьё имя состоит из одного слова.
SELECT nickname
FROM performers
WHERE nickname NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
SELECT name
FROM track
WHERE string_to_array(lower(name),' ') && ARRAY['my','мой']

--Количество исполнителей в каждом жанре.
SELECT g.name, count(p.nickname) 
FROM genres g
JOIN genresoftheperformer gp ON g.id = gp.genres_id 
JOIN performers p ON gp.performer_id = p.id 
GROUP BY g.name;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT count(t.name) 
FROM album a
JOIN track t ON a.id = t.album_id 
WHERE year_of_execution BETWEEN DATE '2019-01-01' AND DATE '2020-01-01'

--Средняя продолжительность треков по каждому альбому.
SELECT a.name, avg(t.duration) 
FROM album a
JOIN track t ON a.id = t.album_id 
GROUP BY a.name

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT p.nickname 
FROM performers p
WHERE p.nickname NOT IN (
	SELECT p.nickname 
	FROM performers p
	JOIN albumperformers ap ON p.id = ap.performers_id
	JOIN album a ON ap.album_id = a.id  
	WHERE a.year_of_execution BETWEEN DATE '2020-01-01' AND DATE '2020-12-31'
);

--Названия сборников, в которых встречается конкретный исполнитель (выберите его сами).
SELECT c.name
FROM performers p
JOIN albumperformers ap ON p.id = ap.performers_id 
JOIN album a ON ap.album_id = a.id 
JOIN track t ON a.id = t.album_id 
JOIN collectiontracks ct ON t.id = ct.track_id 
JOIN collection c ON ct.collection_id = c.id 
WHERE p.nickname = 'Barry Gordon'











