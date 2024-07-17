USE cinem_extract;

-- ¿Qué géneros han recibido más premios Óscar?  NO ME DA RESPUESTA

SELECT m.genre, COUNT(*) AS num_oscars
    FROM oscars AS o
    INNER JOIN relation_movie_oscars AS mo ON o.best_movie = mo.best_movie
    INNER JOIN movies AS m ON mo.id_imdb = m.id_imdb
	WHERE o.best_movie IS NOT NULL
	GROUP BY m.genre
	ORDER BY num_oscars DESC;

-- ¿Qué género es el mejor valorado en IMDB?

SELECT m.genre, AVG(md.score_imdb) AS avg_imdb_score
	FROM movies AS m
	JOIN movie_details AS md ON m.id_imdb = md.id_imdb
	WHERE m.type = 'movie'  -- solo películas (no cortometrajes)
	GROUP BY m.genre
	ORDER BY avg_imdb_score DESC;
    
-- ¿Qué género es el peor valorado en IMDB?
    
-- ¿En que año se estrenaron más películas?

SELECT release_year, COUNT(*) AS num_movies
	FROM movies
	WHERE type = 'movie'  
	GROUP BY release_year
	ORDER BY num_movies DESC
	LIMIT 1;

-- ¿En que año se estrenaron mas cortos?

SELECT release_year, COUNT(*) AS num_shorts
	FROM movies
	WHERE type = 'short'  
	GROUP BY release_year
	ORDER BY num_shorts DESC
	LIMIT 1;

-- ¿Cuál es la película mejor valorada en IMDB?

SELECT m.name AS better_movie, md.score_imdb AS rated_imdb
	FROM movie_details md
	JOIN movies m ON md.id_imdb = m.id_imdb
	ORDER BY md.score_imdb DESC
	LIMIT 1;
    

-- ¿Hay algun actor/actriz que haya recibido más de un premio Óscar?

SELECT actor_name, COUNT(*) AS num_oscar_awards
	FROM (
		SELECT best_actor AS actor_name FROM oscars
		UNION ALL
		SELECT best_actress AS actor_name FROM oscars
	) AS combined_oscars
	WHERE actor_name IS NOT NULL
	GROUP BY actor_name
	HAVING COUNT(*) > 1
	ORDER BY num_oscar_awards DESC;

