CREATE OR REPLACE VIEW movies_vies  AS

SELECT
    movie.name,
    movie.release_year,
    movie_country.country_name,
    movie_genres.genres_name 
    
FROM
    movie
    
    INNER JOIN movie_country ON movie.name = movie_country.movie_name
    INNER JOIN movie_genres ON movie_country.movie_name = movie_genres.movie_name;
    
