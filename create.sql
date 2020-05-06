CREATE TABLE country (
    country VARCHAR2(60) NOT NULL
);

ALTER TABLE country ADD CONSTRAINT country_pk PRIMARY KEY ( country );

CREATE TABLE genres (
    genres VARCHAR2(60) NOT NULL
);

ALTER TABLE genres ADD CONSTRAINT genres_pk PRIMARY KEY ( genres );

CREATE TABLE movie (
    name          VARCHAR2(60) NOT NULL,
    release_year  NUMBER(4),
    duration      NUMBER(4)
);

ALTER TABLE movie ADD CONSTRAINT movie_pk PRIMARY KEY ( name );

CREATE TABLE movie_country (
    movie_name    VARCHAR2(60) NOT NULL,
    country_name  VARCHAR2(60) NOT NULL
);

ALTER TABLE movie_country ADD CONSTRAINT movie_country_pk PRIMARY KEY ( country_name,
                                                                        movie_name );

CREATE TABLE movie_genres (
    movie_name   VARCHAR2(60) NOT NULL,
    genres_name  VARCHAR2(60) NOT NULL
);

ALTER TABLE movie_genres ADD CONSTRAINT movie_genres_pk PRIMARY KEY ( movie_name,
                                                                      genres_name );

ALTER TABLE movie_country
    ADD CONSTRAINT movie_country_country_fk FOREIGN KEY ( country_name )
        REFERENCES country ( country );

ALTER TABLE movie_country
    ADD CONSTRAINT movie_country_movie_fk FOREIGN KEY ( movie_name )
        REFERENCES movie ( name );

ALTER TABLE movie_genres
    ADD CONSTRAINT movie_genres_genres_fk FOREIGN KEY ( genres_name )
        REFERENCES genres ( genres );

ALTER TABLE movie_genres
    ADD CONSTRAINT movie_genres_movie_fk FOREIGN KEY ( movie_name )
        REFERENCES movie ( name );
