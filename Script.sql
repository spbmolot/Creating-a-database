CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(60) UNIQUE NOT NULL 
);

CREATE TABLE IF NOT EXISTS Performers (
	id SERIAL PRIMARY KEY NOT NULL,
	nickname VARCHAR(60) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS GenresOfThePerformer (
	genres_id INTEGER REFERENCES Genres(id),
	performer_id INTEGER REFERENCES Performers(id),
	CONSTRAINT gp PRIMARY KEY (genres_id, performer_id)
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(60) NOT NULL,
	year_of_execution DATE CHECK(year_of_execution >=DATE '1990-01-01') NOT NULL
);

CREATE TABLE IF NOT EXISTS AlbumPerformers (
	album_id INTEGER REFERENCES Album(id),
	performers_id INTEGER REFERENCES Performers(id),
	CONSTRAINT ap PRIMARY KEY (album_id, performers_id)
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(60) NOT NULL,
	duration INTEGER CHECK(duration > 0) NOT NULL,
	album_id INTEGER REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(60) NOT NULL,
	year_of_release DATE CHECK(year_of_release >=DATE  '1990-01-01') NOT NULL
);

CREATE TABLE IF NOT EXISTS CollectionTracks (
	track_id INTEGER REFERENCES Track(id),
	collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT ct PRIMARY KEY (track_id, collection_id)
);
