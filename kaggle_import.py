import cx_Oracle
import pandas as pd


connection = cx_Oracle.connect('system', 'oracle', 'localhost:49161/xe')
cursor = connection.cursor()

df = pd.read_csv('kaggle1.csv')

for line in range(len(df[:6])):

    print('Added ', line, ' line')
    name = df['title'][line]
    release_year = df['release_year'][line]
    duration = df['duration'][line].split(' ')[0]
    country_name = df['country'][line].split(',')[0]
    genres_name = df['genres'][line]

    query = "INSERT INTO movie (name, release_year, duration) VALUES (:name, :release_year, :duration)"
    cursor.execute(query, name=name, release_year=int(release_year), duration=int(duration))

    query = "INSERT INTO country (country) VALUES (:country)"
    cursor.execute(query, country=country_name)

    query = "INSERT INTO genres (genres) VALUES (:genres)"
    cursor.execute(query, genres=genres_name)

    query = "INSERT INTO movie_country (movie_name, country_name) VALUES (:movie_name, :country_name)"
    cursor.execute(query, movie_name=name, country_name=country_name)

    query = "INSERT INTO movie_genres (movie_name, genres_name) VALUES (:movie_name, :genres_name)"
    cursor.execute(query, movie_name=name, genres_name=genres_name)


connection.commit()
cursor.close()
connection.close()
