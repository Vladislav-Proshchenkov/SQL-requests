insert into genre (id, genre) values (1, 'pop music');
insert into genre (id, genre) values (2, 'rock');
insert into genre (id, genre) values (3, 'hip-hop');
insert into genre (id, genre) values (4, 'jazz');
insert into genre (id, genre) values (5, 'blues');

insert into singer (id, singer_name) values (1, 'Rihanna');
insert into singer (id, singer_name) values (2, 'Katy Perry');
insert into singer (id, singer_name) values (3, 'Linkin Park');
insert into singer (id, singer_name) values (4, 'OneRepublic');
insert into singer (id, singer_name) values (5, 'JAY-Z');
insert into singer (id, singer_name) values (6, 'Kanye West');
insert into singer (id, singer_name) values (7, 'Albert Ayler');
insert into singer (id, singer_name) values (8, 'Hozier');

insert into genre_singer (genre_id, singer_id) values (1, 1);
insert into genre_singer (genre_id, singer_id) values (3, 1);
insert into genre_singer (genre_id, singer_id) values (1, 2);
insert into genre_singer (genre_id, singer_id) values (2, 2);
insert into genre_singer (genre_id, singer_id) values (2, 3);
insert into genre_singer (genre_id, singer_id) values (2, 4);
insert into genre_singer (genre_id, singer_id) values (1, 4);
insert into genre_singer (genre_id, singer_id) values (3, 5);
insert into genre_singer (genre_id, singer_id) values (3, 6);
insert into genre_singer (genre_id, singer_id) values (4, 7);
insert into genre_singer (genre_id, singer_id) values (5, 8);

insert into album (id, album_title, album_year) values (1, 'Anti', '2016-01-28');
insert into album (id, album_title, album_year) values (2, 'Loud', '2010-11-12');
insert into album (id, album_title, album_year) values (3, 'Witness', '2017-06-09');
insert into album (id, album_title, album_year) values (4, 'Prism', '2013-10-18');
insert into album (id, album_title, album_year) values (5, 'Meteora', '2003-03-25');
insert into album (id, album_title, album_year) values (6, 'Minutes to Midnight', '2007-03-14');
insert into album (id, album_title, album_year) values (7, 'Human', '2021-08-27');
insert into album (id, album_title, album_year) values (8, '4:44', '2017-06-30');
insert into album (id, album_title, album_year) values (9, 'Ye', '2018-06-01');
insert into album (id, album_title, album_year) values (10, 'Live on the Riviera', '1970-07-25');
insert into album (id, album_title, album_year) values (11, 'Nina Cried Power EP', '2018-09-07');
insert into album (id, album_title, album_year) values (12, 'Hybrid Theory', '2000-10-24');

insert into singer_album (album_id, singer_id) values (1, 1);
insert into singer_album (album_id, singer_id) values (2, 1);
insert into singer_album (album_id, singer_id) values (3, 2);
insert into singer_album (album_id, singer_id) values (4, 2);
insert into singer_album (album_id, singer_id) values (5, 3);
insert into singer_album (album_id, singer_id) values (6, 3);
insert into singer_album (album_id, singer_id) values (7, 4);
insert into singer_album (album_id, singer_id) values (8, 5);
insert into singer_album (album_id, singer_id) values (9, 6);
insert into singer_album (album_id, singer_id) values (10, 7);
insert into singer_album (album_id, singer_id) values (11, 8);
insert into singer_album (album_id, singer_id) values (12, 3);

insert into song (id, album_id, song_name, song_duration) values (1, 1, 'Consideration', 161);
insert into song (id, album_id, song_name, song_duration) values (2, 1, 'Work', 219);
insert into song (id, album_id, song_name, song_duration) values (3, 1, 'Woo', 236);
insert into song (id, album_id, song_name, song_duration) values (4, 1, 'Desperado', 186);
insert into song (id, album_id, song_name, song_duration) values (5, 2, 'Cheers', 262);
insert into song (id, album_id, song_name, song_duration) values (6, 2, 'Fading', 200);
insert into song (id, album_id, song_name, song_duration) values (7, 3, 'Witness', 250);
insert into song (id, album_id, song_name, song_duration) values (8, 3, 'Power', 216);
insert into song (id, album_id, song_name, song_duration) values (9, 3, 'Roulette', 199);
insert into song (id, album_id, song_name, song_duration) values (10, 4, 'Roar', 223);
insert into song (id, album_id, song_name, song_duration) values (11, 4, 'Birthday', 215);
insert into song (id, album_id, song_name, song_duration) values (12, 4, 'Dark house', 215);
insert into song (id, album_id, song_name, song_duration) values (13, 5, 'Faint', 162);
insert into song (id, album_id, song_name, song_duration) values (14, 5, 'Numb', 188);
insert into song (id, album_id, song_name, song_duration) values (15, 5, 'Easier to run', 204);
insert into song (id, album_id, song_name, song_duration) values (16, 5, 'Hit the floor', 164);
insert into song (id, album_id, song_name, song_duration) values (17, 6, 'Wake', 101);
insert into song (id, album_id, song_name, song_duration) values (18, 6, 'Given up', 189);
insert into song (id, album_id, song_name, song_duration) values (19, 6, 'No more sorrow', 222);
insert into song (id, album_id, song_name, song_duration) values (20, 7, 'Run', 169);
insert into song (id, album_id, song_name, song_duration) values (21, 7, 'Distance', 180);
insert into song (id, album_id, song_name, song_duration) values (22, 7, 'Someday', 187);
insert into song (id, album_id, song_name, song_duration) values (23, 7, 'Savior', 181);
insert into song (id, album_id, song_name, song_duration) values (24, 8, 'Smile', 290);
insert into song (id, album_id, song_name, song_duration) values (25, 8, '4:44', 284);
insert into song (id, album_id, song_name, song_duration) values (26, 8, 'Bam', 235);
insert into song (id, album_id, song_name, song_duration) values (27, 8, 'Kill Jay Z', 178);
insert into song (id, album_id, song_name, song_duration) values (28, 9, 'All mine', 145);
insert into song (id, album_id, song_name, song_duration) values (29, 9, 'Yikes', 188);
insert into song (id, album_id, song_name, song_duration) values (30, 9, 'Ghost town', 271);
insert into song (id, album_id, song_name, song_duration) values (31, 10, 'Heart love', 324);
insert into song (id, album_id, song_name, song_duration) values (32, 10, 'Ghosts', 654);
insert into song (id, album_id, song_name, song_duration) values (33, 10, 'Masonic inborn', 439);
insert into song (id, album_id, song_name, song_duration) values (34, 11, 'Shrike', 299);
insert into song (id, album_id, song_name, song_duration) values (35, 11, 'NFWMB', 262);
insert into song (id, album_id, song_name, song_duration) values (36, 12, 'My december', 263);

insert into collection (id, collection_title, collection_year) values (1, 'Pop collection', '2018-05-05');
insert into collection (id, collection_title, collection_year) values (2, 'Rock collection', '2017-02-28');
insert into collection (id, collection_title, collection_year) values (3, 'Smile', '2020-09-10');
insert into collection (id, collection_title, collection_year) values (4, 'Perfect', '2019-07-12');
insert into collection (id, collection_title, collection_year) values (5, 'Classic', '2000-06-01');
insert into collection (id, collection_title, collection_year) values (6, 'New trend', '2023-07-16');
insert into collection (id, collection_title, collection_year) values (7, 'Bam', '2013-03-20');
insert into collection (id, collection_title, collection_year) values (8, 'My december', '2015-11-11');

insert into collection_song (collection_id, song_id) values (1, 1);
insert into collection_song (collection_id, song_id) values (1, 2);
insert into collection_song (collection_id, song_id) values (1, 5);
insert into collection_song (collection_id, song_id) values (1, 7);
insert into collection_song (collection_id, song_id) values (1, 4);
insert into collection_song (collection_id, song_id) values (1, 8);
insert into collection_song (collection_id, song_id) values (1, 9);
insert into collection_song (collection_id, song_id) values (2, 13);
insert into collection_song (collection_id, song_id) values (2, 14);
insert into collection_song (collection_id, song_id) values (2, 16);
insert into collection_song (collection_id, song_id) values (2, 18);
insert into collection_song (collection_id, song_id) values (3, 17);
insert into collection_song (collection_id, song_id) values (3, 15);
insert into collection_song (collection_id, song_id) values (3, 24);
insert into collection_song (collection_id, song_id) values (3, 13);
insert into collection_song (collection_id, song_id) values (3, 14);
insert into collection_song (collection_id, song_id) values (4, 21);
insert into collection_song (collection_id, song_id) values (4, 18);
insert into collection_song (collection_id, song_id) values (4, 15);
insert into collection_song (collection_id, song_id) values (4, 11);
insert into collection_song (collection_id, song_id) values (4, 22);
insert into collection_song (collection_id, song_id) values (5, 27);
insert into collection_song (collection_id, song_id) values (5, 25);
insert into collection_song (collection_id, song_id) values (5, 24);
insert into collection_song (collection_id, song_id) values (5, 14);
insert into collection_song (collection_id, song_id) values (6, 28);
insert into collection_song (collection_id, song_id) values (6, 22);
insert into collection_song (collection_id, song_id) values (6, 21);
insert into collection_song (collection_id, song_id) values (6, 17);
insert into collection_song (collection_id, song_id) values (7, 35);
insert into collection_song (collection_id, song_id) values (7, 34);
insert into collection_song (collection_id, song_id) values (7, 32);
insert into collection_song (collection_id, song_id) values (8, 15);
insert into collection_song (collection_id, song_id) values (8, 36);