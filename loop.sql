DECLARE
    TYPE tab_movie IS VARRAY(5) OF movie.name%TYPE;
    TYPE tab_country IS VARRAY(5) OF country.country%TYPE;
    val_movie tab_movie;
    val_country tab_country;
BEGIN
    val_movie := tab_movie('American Horror Story', 'Elite', 'Money Heist');
    val_country := tab_country('USA', 'Spain', 'Spain');
    FOR i IN 1 .. val_movie.count
    LOOP
        INSERT INTO movie_country (movie_name, country_name) VALUES (val_movie(i), val_country(i));
        COMMIT;
    END LOOP;
END;
