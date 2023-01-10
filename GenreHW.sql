CREATE TABLE `album`(
    `Album_ID` INT NOT NULL,
    `Album_name` VARCHAR(255) NOT NULL,
    `Album_year_of_issue` DATE NOT NULL
);
CREATE TABLE `author`(
    `Author_ID` INT NOT NULL,
    `Author_name` VARCHAR(255) NOT NULL
);
CREATE TABLE `authoralbum`(
    `Author_ID` INT NOT NULL,
    `Album_ID` INT NOT NULL
);
CREATE TABLE `collection`(
    `Collection_ID` INT NOT NULL,
    `Collection_name` VARCHAR(255) NOT NULL,
    `Collection_year_of_issue` DATE NOT NULL
);
CREATE TABLE `collectiontracks`(
    `Tracks_ID` INT NOT NULL,
    `Collection_ID` INT NOT NULL
);
CREATE TABLE `genre`(
    `Genre_ID` INT NOT NULL,
    `Genre_name` VARCHAR(255) NOT NULL
);
CREATE TABLE `genreauthor`(
    `Genre_ID` INT NOT NULL,
    `Author_ID` INT NOT NULL
);
CREATE TABLE `tracks`(
    `Tracks_ID` INT NOT NULL,
    `Track_name` VARCHAR(255) NOT NULL,
    `Track_duration` VARCHAR(255) NOT NULL
);