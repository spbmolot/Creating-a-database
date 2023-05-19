--Название и продолжительность самого продолжительного трека.
SELECT name, duration
FROM track
WHERE duration = (SELECT max(duration) FROM track);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT name, duration
FROM track
WHERE duration > 180;

--Названия сборников, вышедших в период с 2018 по 2020 год ограниченно.
SELECT name
FROM collection
WHERE year_of_release BETWEEN '2018-01-01' AND '2020-01-01';

--Исполнители, чьё имя состоит из одного слова.
SELECT nickname
FROM performers
WHERE nickname NOT LIKE '% %';

--Название треков, которые содержат слово «My».
SELECT name
FROM track
WHERE name LIKE '%My%';

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
WHERE year_of_execution BETWEEN '2019-01-01' AND '2020-01-01'

--Средняя продолжительность треков по каждому альбому.
SELECT a.name, avg(t.duration) 
FROM album a
JOIN track t ON a.id = t.album_id 
GROUP BY a.name

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT p.nickname 
FROM album a
JOIN albumperformers ap ON a.id = ap.album_id 
JOIN performers p ON ap.performers_id = p.id 
WHERE year_of_execution = '2020-01-01'

--Названия сборников, в которых встречается конкретный исполнитель (выберите его сами).
SELECT c.name
FROM performers p
JOIN albumperformers ap ON p.id = ap.performers_id 
JOIN album a ON ap.album_id = a.id 
JOIN track t ON a.id = t.album_id 
JOIN collectiontracks ct ON t.id = ct.track_id 
JOIN collection c ON ct.collection_id = c.id 
WHERE p.nickname = 'Barry Gordon'











