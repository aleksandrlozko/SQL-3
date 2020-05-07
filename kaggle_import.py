import cx_Oracle
import pandas as pd


connection = cx_Oracle.connect('system', 'oracle', 'localhost:49161/xe')
cursor = connection.cursor()

df = pd.read_csv('kaggle1.csv', encoding='UTF-8')

genres = []
country = []
for line in range(len(df[:150])):

    try:
        print('Added ', line, ' line')
        name = str(df['title'][line])
        release_year = int(df['release_year'][line])
        duration = int(df['duration'][line].split(' ')[0])
        country_name = str(df['country'][line]).split(',')[0]
        genres_name = str(df['genres'][line])

        query = "INSERT INTO movie (name, release_year, duration) VALUES (:name, :release_year, :duration)"
        cursor.execute(query, name=name, release_year=release_year, duration=duration)

        if country_name not in country:
            query = "INSERT INTO country (country) VALUES (:country)"
            cursor.execute(query, country=country_name)
            country.append(country_name)

        if genres_name not in genres:
            query = "INSERT INTO genres (genres) VALUES (:genres)"
            cursor.execute(query, genres=genres_name)
            genres.append(genres_name)

        query = "INSERT INTO movie_country (movie_name, country_name) VALUES (:movie_name, :country_name)"
        cursor.execute(query, movie_name=name, country_name=country_name)

        query = "INSERT INTO movie_genres (movie_name, genres_name) VALUES (:movie_name, :genres_name)"
        cursor.execute(query, movie_name=name, genres_name=genres_name)
        
    except:
        print('ERROR', 'on line', line)

connection.commit()
cursor.close()
connection.close()
