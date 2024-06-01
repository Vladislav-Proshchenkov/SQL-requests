-- задание 2

-- Название и продолжительность самого длительного трека.
select song_name, song_duration 
from song
where song_duration = (select max(song_duration) from song);

-- Название треков, продолжительность которых не менее 3,5 минут.
select song_name
from song
where song_duration >= 3.5*60;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select collection_title
from collection
where collection_year >= '2018-01-01' and collection_year < '2021-01-01';

-- Исполнители, чьё имя состоит из одного слова.
select singer_name
from singer
where singer_name not like '% %';

-- Название треков, которые содержат слово «мой» или «my».
select song_name
from song
where song_name ilike '%my%' or song_name ilike '%мой%';

-- Задание 3

-- Количество исполнителей в каждом жанре.
select genre, count(singer_id) from genre_singer, genre
where genre.id = genre_singer.genre_id 
group by genre.genre;

-- Количество треков, вошедших в альбомы 2018–2022 годов. (Изменил года, чтобы были результаты)
select album_title, count(song_name) from album, song
where album.id = song.album_id and album_year >= '2018-01-01' and album_year < '2022-01-01'
group by album_title;

-- Средняя продолжительность треков по каждому альбому.
select album_title, avg(song_duration) from album, song
where album.id = song.album_id
group by album_title;

-- Все исполнители, которые не выпустили альбомы в 2003 году. (Изменил год, чтобы проверить правильность работы запроса) 
-- Группа Linkin Park выпустила несколько альбомов, в том числе альбом Meteora в 2003 году, поэтому группа отсутствует в итоговом списке.
select singer_name from singer
where singer_name != (select singer_name from singer, album, singer_album
where singer.id = singer_album.singer_id and album.id = singer_album.album_id 
and (album_year >='2003-01-01' and album_year <'2004-01-01'));


-- Названия сборников, в которых присутствует конкретный исполнитель (Hozier).
select distinct collection_title from collection c, collection_song cs, song s, album a, singer_album sa, singer sin
where c.id = cs.collection_id and cs.song_id = s.id and s.album_id = a.id and a.id = sa.album_id and sa.singer_id = sin.id
group by collection_title, singer_name
having singer_name = 'Hozier';

-- Задание 4

-- Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
select album_title, count(genre) from album a, singer_album sa, singer s, genre_singer gs, genre g
where a.id = sa.album_id and sa.singer_id = s.id and s.id = gs.singer_id and gs.genre_id = g.id
group by album_title
having count(genre) > 1;

-- Наименования треков, которые не входят в сборники.
select song_name from song
where song_name not in (select song_name from song s, collection_song cs, collection c 
where s.id = cs.song_id and cs.collection_id = c.id);

-- Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
select singer_name from singer sin, singer_album sa, album a, song s
where sin.id = sa.singer_id and sa.album_id = a.id and a.id = s.album_id and song_duration = (select min(song_duration) from song);

-- Названия альбомов, содержащих наименьшее количество треков.
select album_title, count(song_name) from album a, song s
where a.id = s.album_id
group by album_title
having count(song_name) = (select count(song_name) from song group by album_id order by count(song_name) limit 1);