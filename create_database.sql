CREATE SCHEMA cinem_extract_prueba;

USE cinem_extract_prueba;

CREATE TABLE movies 
(
    id_imdb VARCHAR(45) NOT NULL, 
    type ENUM("movie", "musicVideo", "podcastEpisode", "podcastSeries", "short", "tvEpisode", "tvMiniSeries", "tvMovie", "tvPilot", "tvSeries", "tvShort", "tvSpecial", "video", "videoGame"), 
    name VARCHAR(45), 
    release_year YEAR,
    release_month SMALLINT,
    genre ENUM ("Action", "Adult", "Adventure", "Animation", "Biography", "Comedy", "Crime", "Documentary", "Drama", "Family", "Fantasy", "Film-Noir", "Game-Show", "History", "Horror", "Music", "Musical", "Mystery", "News", "Reality-TV", "Romance", "Sci-Fi", "Short", "Sport", "Talk-Show", "Thriller", "War", "Western"),
    PRIMARY KEY (id_imdb),
    UNIQUE (name)
);

CREATE TABLE movie_details 
(
    id_imdb VARCHAR(45) NOT NULL, 
    score_imdb FLOAT, 
    score_rt INT, 
    director_imdb VARCHAR(45),
    screenwriters_imdb VARCHAR(45),
    plot_rt VARCHAR(255),
    duration_imdb INT,
    title_imdb VARCHAR(100),
    PRIMARY KEY (id_imdb),
    FOREIGN KEY (id_imdb) REFERENCES movies(id_imdb) ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE oscars 
( 
	ceremony_year YEAR NOT NULL, 
    best_movie VARCHAR(100), 
    best_director VARCHAR(45), 
    best_actor VARCHAR(45), 
    best_actress VARCHAR(45), 
    PRIMARY KEY (ceremony_year),
    UNIQUE (best_movie)
);

CREATE TABLE relation_movie_oscars 
(
	id_imdb VARCHAR(45),
    best_movie VARCHAR(100), 
    PRIMARY KEY (id_imdb, best_movie),
    FOREIGN KEY (id_imdb) REFERENCES movies(id_imdb) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (best_movie) REFERENCES oscars(best_movie) ON DELETE CASCADE ON UPDATE CASCADE
);
    
CREATE TABLE actor_details 
(
	actor_name VARCHAR(45),
    birth_year YEAR,
    known_for VARCHAR(255),
    actor_role VARCHAR(255),
    actor_awards VARCHAR(255),
    PRIMARY KEY (actor_name)
);
    
CREATE TABLE relation_actor_movie
(
	id_imdb VARCHAR(45),
	actor_name VARCHAR(45),
    PRIMARY KEY (id_imdb, actor_name),
    FOREIGN KEY (id_imdb) REFERENCES movies(id_imdb) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (actor_name) REFERENCES actor_details(actor_name) ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE actor_awards (
    actor_name VARCHAR(45),
    ceremony_year YEAR,
    award_type ENUM('best_actor', 'best_actress', 'best_director'),
    PRIMARY KEY (actor_name, ceremony_year, award_type),
    FOREIGN KEY (actor_name) REFERENCES actor_details(actor_name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ceremony_year) REFERENCES oscars(ceremony_year) ON DELETE CASCADE ON UPDATE CASCADE
);


    