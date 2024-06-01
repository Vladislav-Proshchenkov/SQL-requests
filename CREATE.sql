create table if not exists genre (
    id serial primary key,
    genre varchar not null
);

create table if not exists singer (
    id serial primary key,
    singer_name varchar not null
);

create table if not exists genre_singer (
    genre_id integer references genre(id),
    singer_id integer references singer(id),
    constraint pk_1 primary key (genre_id, singer_id)
);

create table if not exists album (
    id serial primary key,
    album_title varchar not null,
    album_year date not null
);

create table if not exists singer_album (
    singer_id integer references singer(id),
    album_id integer references album(id),
    constraint pk_2 primary key (album_id, singer_id)
);

create table if not exists song (
    id serial primary key,
    album_id integer references album(id),
    song_name varchar not null,
    song_duration integer not null CHECK (song_duration > 0)
);

create table if not exists collection (
    id serial primary key,
    collection_title varchar not null,
    collection_year date not null
);

create table if not exists collection_song (
    collection_id integer references collection(id),
    song_id integer references song(id),
    constraint pk_3 primary key (collection_id, song_id)
    );