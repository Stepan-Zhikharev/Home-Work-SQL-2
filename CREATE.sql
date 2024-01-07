create table if not exists Performers (
    id SERIAL primary key,
    name VARCHAR(40) not null
);
create table if not exists Style (
    id SERIAL primary key,
    name_style VARCHAR(40) not null
);
create table if not exists Performers_style (
    style_id INTEGER references Style(id),
    performers_id INTEGER references Performers(id),
    constraint performers_style_id primary key (performers_id, style_id)
);
create table if not exists Album (
    id SERIAL primary key,
    name VARCHAR(40) not null,
    year_of_release DATE
);
create table if not exists Performers_album (
    performers_id INTEGER references Performers(id),
    album_id INTEGER references Album(id),
    constraint performers_album_id primary key (performers_id, album_id)
);
create table if not exists Track (
    id SERIAL primary key,
    name VARCHAR(40) not null,
    duration TIME,
    album_id INTEGER references Album(id)
);
create table if not exists Collection (
    id SERIAL primary key,
    name VARCHAR(40) not null,
    year_of_release DATE
);
create table if not exists Track_collection (
    track_id INTEGER references Track(id),
    collection_id INTEGER references Collection(id),
    constraint track_collection_id primary key (track_id, collection_id)
);