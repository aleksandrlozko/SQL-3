import cx_Oracle
import csv

connection = cx_Oracle.connect('system', 'oracle', 'localhost:49161/xe')
cursor = connection.cursor()

entity = ['movie', 'country', 'genres', 'movie_country', 'movie_country']

for entity in entity:
    with open(f'{entity}.csv', 'w', newline='') as file:
        writer = csv.writer(file)


        query = f'SELECT * FROM {entity}'
        cursor.execute(query)


        column_names = [i[0] for i in cursor.description]
        writer.writerow(column_names)


        for line in cursor:
            writer.writerow(line)

cursor.close()
connection.close()
