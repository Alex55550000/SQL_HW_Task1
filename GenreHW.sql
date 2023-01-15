CREATE TABLE `album`(
    `Album_ID` SERIAL PRIMARY KEY,
    `Album_name` VARCHAR(60),
    `Album_year_of_issue` INT NOT NULL
);
CREATE TABLE `author`(
    `Author_ID` SERIAL PRIMARY KEY,
    `Author_name` VARCHAR(60)
);
CREATE TABLE `authoralbum`(
    `Author_ID` INT NOT NULL,
    `Album_ID` INT REFERENCES 'album(Album_ID)'
);
CREATE TABLE `collection`(
    `Collection_ID` SERIAL PRIMARY KEY,
    `Collection_name` VARCHAR(60),
    `Collection_year_of_issue` INT NOT NULL
);
CREATE TABLE `collectiontracks`(
    `Tracks_ID` INT REFERENCES 'tracks(Tracks_ID)',
    `Collection_ID` INT REFERENCES 'collection(Collection_ID)'
);
CREATE TABLE `genre`(
    `Genre_ID` SERIAL PRIMARY key,
    `Genre_name` VARCHAR(60)
);
CREATE TABLE `genreauthor`(
    `Genre_ID` INT REFERENCES 'genre(Genre_ID)',
    `Author_ID` INT REFERENCES 'author(Author_ID)'
);
CREATE TABLE `tracks`(
    `Tracks_ID` SERIAL PRIMARY KEY,
    `Track_name` VARCHAR(60),
    `Track_duration` INT NOT NULL
);
