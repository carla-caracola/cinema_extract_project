CREATE SCHEMA pruebas;

USE pruebas;

CREATE TABLE relation_movies_oscars(
	id_imdb VARCHAR(45),
    best_movie VARCHAR(100), 
    PRIMARY KEY (id_imdb, best_movie)
    );
    
CREATE TABLE actors_details(
	actor_name VARCHAR(45),
    birth_year YEAR,
    known_for VARCHAR(255),
    actor_role VARCHAR(255),
    actor_awards VARCHAR(255),
    PRIMARY KEY (actor_name)
    );
    
CREATE TABLE relations_actor_movies(
	id_imdb VARCHAR(45),
	actor_name VARCHAR(45),
    PRIMARY KEY (id_imdb, actor_name)
    );

CREATE TABLE oscars ( 
	ceremony_year YEAR NOT NULL, 
    best_movie VARCHAR(100), 
    best_director VARCHAR(45), 
    best_actor VARCHAR(45), 
    best_actress VARCHAR(45), 
    PRIMARY KEY (ceremony_year)
    );

CREATE TABLE actors(
	id_actor INT AUTO_INCREMENT,
    actor_name VARCHAR(45),
	best_actor VARCHAR(45),
    best_actress VARCHAR(45),
    PRIMARY KEY (id_actor),
    FOREIGN KEY (actor_name) REFERENCES actors_details(actor_name),
    FOREIGN KEY (best_actor) REFERENCES oscars(best_actor),
    FOREIGN KEY (best_actress) REFERENCES oscars(best_actress)
    );
    

    