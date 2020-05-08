-------------------------
-- genres table
-------------------------
INSERT INTO genres(genres)
VALUES('Comedies');

INSERT INTO genres(genres)
VALUES('Kids TV');

INSERT INTO genres(genres)
VALUES('Stand-Up Comedy');

INSERT INTO genres(genres)
VALUES('Adventure');

INSERT INTO genres(genres)
VALUES('Family Movies');

INSERT INTO genres(genres)
VALUES('Documentaries');

INSERT INTO genres(genres)
VALUES('Horror');

INSERT INTO genres(genres)
VALUES('Dramas');

-------------------------
-- movies table
-------------------------
INSERT INTO movie(name,release_year,duration)
VALUES('Norm of the North: King Sized Adventure', 2019, 90);

INSERT INTO movie(name,release_year,duration)
VALUES('Jandino: Whatever it Takes', 2016, 94);

INSERT INTO movie(name,release_year,duration)
VALUES('#realityhigh', 2017, 99);

INSERT INTO movie(name, release_year, duration)
VALUES('Automata', 2014, 110);

INSERT INTO movie(name,release_year,duration)
VALUES('Fabrizio Copano: Solo pienso en mi', 2017, 60);

INSERT INTO movie(name,release_year,duration)
VALUES('Good People' , 2014, 90);

INSERT INTO movie(name,release_year,duration)
VALUES('Joaquín Reyes: Una y no más' , 2017, 78);

INSERT INTO movie(name,release_year,duration)
VALUES('Kidnapping Mr. Heineken' , 2015, 95);

INSERT INTO movie(name,release_year,duration)
VALUES('Krish Trish and Baltiboy: Battle of Wits', 2013, 62);

INSERT INTO movie(name,release_year,duration)
VALUES('Krish Trish and Baltiboy: Best Friends Forever' , 2016,  65);

INSERT INTO movie(name,release_year,duration)
VALUES('Love',2015, 135);

INSERT INTO movie(name,release_year,duration)
VALUES('Manhattan Romance' , 2014,  98);

INSERT INTO movie(name,release_year,duration)
VALUES('Moonwalkers' , 2015, 96);

INSERT INTO movie(name,release_year,duration)
VALUES('Rolling Papers' , 2015, 79);

INSERT INTO movie(name,release_year,duration)
VALUES('Stonehearst Asylum' , 2014, 113);

INSERT INTO movie(name,release_year,duration)
VALUES('The Runner', 2015, 90);

INSERT INTO movie(name,release_year,duration)
VALUES('6 Years', 2015,  80);

INSERT INTO movie(name,release_year,duration)
VALUES('City of Joy',  2018, 77);

INSERT INTO movie(name,release_year,duration)
VALUES('Laddaland',  2011,  112);

INSERT INTO movie(name,release_year,duration)
VALUES('Next Gen', 2018, 106);

-------------------------
-- country table
-------------------------
INSERT INTO country(country)
VALUES('United Kingdom');

INSERT INTO country(country)
VALUES('United States');

INSERT INTO country(country)
VALUES('Spain');

INSERT INTO country(country)
VALUES('Bulgaria');

INSERT INTO country(country)
VALUES('Chile');

INSERT INTO country(country)
VALUES('Netherlands');

INSERT INTO country(country)
VALUES('France');

INSERT INTO country(country)
VALUES('Thailand');

INSERT INTO country(country)
VALUES('Belgium');

-------------------------
-- movie_country table
-------------------------
INSERT INTO movie_country(movie_name,country_name)
VALUES('Norm of the North: King Sized Adventure', 'United States');

INSERT INTO movie_country(movie_name,country_name)
VALUES('Jandino: Whatever it Takes', 'United Kingdom');

INSERT INTO movie_country(movie_name,country_name)
VALUES('#realityhigh', 'United States');

INSERT INTO movie_country(movie_name,country_name)
VALUES('Automata', 'Bulgaria');

INSERT INTO movie_country(movie_name,country_name)
VALUES('Fabrizio Copano: Solo pienso en mi',  'Chile');

INSERT INTO movie_country(movie_name,country_name)
VALUES('Good People', 'United States');

INSERT INTO movie_country(movie_name, country_name)
VALUES('Joaquín Reyes: Una y no más', 'Spain');

INSERT INTO movie_country(movie_name,country_name)
VALUES('Kidnapping Mr. Heineken', 'Netherlands');

INSERT INTO movie_country(movie_name,country_name)
VALUES('Krish Trish and Baltiboy: Battle of Wits', 'Spain');

INSERT INTO movie_country(movie_name,country_name)
VALUES('Krish Trish and Baltiboy: Best Friends Forever', 'Spain');

INSERT INTO movie_country(movie_name,country_name)
VALUES('Love', 'France');

INSERT INTO movie_country(movie_name,country_name)
VALUES('Manhattan Romance', 'United States');

INSERT INTO movie_country(movie_name,country_name)
VALUES('Moonwalkers', 'France');

INSERT INTO movie_country(movie_name,country_name)
VALUES('Rolling Papers', 'United States');

INSERT INTO movie_country(movie_name,country_name)
VALUES('Stonehearst Asylum','United States');

INSERT INTO movie_country(movie_name,country_name)
VALUES('The Runner',  'United States');

INSERT INTO movie_country(movie_name,country_name)
VALUES('6 Years', 'United States');

-------------------------
-- movie_genres table
-------------------------
INSERT INTO movie_genres(movie_name,genres_name)
VALUES('Norm of the North: King Sized Adventure', 'Comedies');

INSERT INTO movie_genres(movie_name,genres_name)
VALUES('Jandino: Whatever it Takes',  'Stand-Up Comedy');

INSERT INTO movie_genres(movie_name,genres_name)
VALUES('#realityhigh',  'Comedies');

INSERT INTO movie_genres(movie_name,genres_name)
VALUES('Automata', 'Kids TV');

INSERT INTO movie_genres(movie_name,genres_name)
VALUES('Fabrizio Copano: Solo pienso en mi' , 'Stand-Up Comedy');

INSERT INTO movie_genres(movie_name,genres_name)
VALUES('Good People',  'Adventure');

INSERT INTO movie_genres(movie_name,genres_name)
VALUES('Joaquín Reyes: Una y no más',  'Stand-Up Comedy');

INSERT INTO movie_genres(movie_name,genres_name)
VALUES('Kidnapping Mr. Heineken',  'Adventure');

INSERT INTO movie_genres(movie_name,genres_name)
VALUES('Krish Trish and Baltiboy: Battle of Wits', 'Family Movies');

INSERT INTO movie_genres(movie_name,genres_name)
VALUES('Krish Trish and Baltiboy: Best Friends Forever', 'Family Movies');

INSERT INTO movie_genres(movie_name,genres_name)
VALUES('Love', 'Dramas');

INSERT INTO movie_genres(movie_name,genres_name)
VALUES('Manhattan Romance', 'Comedies');

INSERT INTO movie_genres(movie_name,genres_name)
VALUES('Moonwalkers', 'Adventure');

INSERT INTO movie_genres(movie_name,genres_name)
VALUES('Rolling Papers',  'Documentaries');

INSERT INTO movie_genres(movie_name,genres_name)
VALUES('Stonehearst Asylum', 'Horror');

INSERT INTO movie_genres(movie_name,genres_name)
VALUES('The Runner',  'Dramas');

INSERT INTO movie_genres(movie_name,genres_name)
VALUES('6 Years',  'Dramas');
