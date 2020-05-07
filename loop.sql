DECLARE
    TYPE tab_movie IS VARRAY(5) OF movie.name%TYPE;
    TYPE tab_duration IS VARRAY(5) OF country.country%TYPE;
    val_movie tab_movie;
    val_duration tab_duration;
BEGIN
    val_movie := tab_movie('American Horror Story', 'Elite', 'Money Heist');
    val_duration := tab_duration('9', '4', '4');
    FOR i IN 1 .. val_movie.count
    LOOP
        INSERT INTO movie (name, duration) VALUES (val_movie(i), val_duration(i));
        COMMIT;
    END LOOP;
END;
