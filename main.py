import cx_Oracle
import re
import chart_studio
import chart_studio.dashboard_objs as dashboard
import plotly.graph_objects as go
import chart_studio.plotly as py


def fileId_from_url(url):
    """Return fileId from a url."""
    raw_fileId = re.findall("~[0-z]+/[0-9]+", url)[0][1:]
    return raw_fileId.replace('/', ':')


chart_studio.tools.set_credentials_file(username='aleksandrlozko', api_key='7YGIfBAfWctfWWE5TFPc')
connection = cx_Oracle.connect('system', 'oracle', 'localhost:49161/xe')
cursor = connection.cursor()

#FIRST QUERY


query = '''
SELECT country_name COUNTRY, COUNT(movies_vies.name) COUNT_OF_MOVIE
FROM movies_vies
GROUP BY country_name
'''


X = []
Y = []



cursor.execute(query)
for c, number in cursor.fetchall():
    X.append(c)
    Y.append(number)


fig = go.Figure(data=[go.Bar(x=X, y=Y)],
                layout=go.Layout(xaxis={'title': 'Країни'},
                yaxis={'title': 'Кількість фільмів'}))
fig.update_layout(title='Кількість фільмів та шоу по країнам')
url1 = py.plot(fig, filename='query1.html')


#SECOND QUERY


query = '''
SELECT genres_name AS genres, round(COUNT(name) * 100 / (SELECT SUM(COUNT(genres_name)) FROM movies_vies GROUP BY genres_name), 1) AS percentage
FROM movies_vies
GROUP BY genres_name
'''

X = []
Y = []

cursor.execute(query)
for name, percentage in cursor.fetchall():
    X.append(name)
    Y.append(percentage)

fig = go.Figure(data=[go.Pie(labels=X, values=Y)])
fig.update_layout(title='Відсоток кожного жанру відносно загальної кількості')
url2 = py.plot(fig, filename='query2.html')


#THIRD QUERY


query = '''
SELECT release_year AS year, 
		COUNT(name) AS amount
FROM movies_vies
GROUP BY release_year
ORDER BY release_year
'''


X = []
Y = []


cursor.execute(query)
for year, amount in cursor.fetchall():
    X.append(year)
    Y.append(amount)


fig = go.Figure(data=[go.Scatter(x=X, y=Y, mode='lines+markers')],
                layout=go.Layout(xaxis={'title': 'Рік' },
                                yaxis={'title': 'Кількість'}))
fig.update_layout(title='Динаміка випуску фільмів та шоу по роках')
url3 = py.plot(fig, filename='query3.html')


cursor.close()
connection.close()


dboard = dashboard.Dashboard()


first = fileId_from_url(url1)

second = fileId_from_url(url2)

third = fileId_from_url(url3)


box1 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': first,
    'title': 'Кількість фільмів та шоу по країнам'
}


box2 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': second,
    'title': 'Відсоток кожного жанру відносно загальної кількості'
}


box3 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': third,
    'title': 'Динаміка випуску фільмів та шоу по роках'
}


dboard.insert(box1)
dboard.insert(box2, 'below', 1)
dboard.insert(box3, 'right', 2)


py.dashboard_ops.upload(dboard, "Dashboard by Lozko")