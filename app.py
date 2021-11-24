
import os
from flask import Flask,render_template, request, json
from flask_mysqldb import MySQL


app = Flask(__name__)

app.config['MYSQL_HOST'] = os.getenv('MYSQL_HOST')
app.config['MYSQL_USER'] = os.getenv('MYSQL_USER')
app.config['MYSQL_PASSWORD'] = os.getenv('MYSQL_PASSWORD')
app.config['MYSQL_DB'] = os.getenv('MYSQL_SCHEMA')
 
mysql = MySQL(app)

@app.route('/')
def home():
    return "Hello World"

@app.route('/sysdate')
def sysdate():
    cursor = mysql.connection.cursor()
    cursor.execute('select sysdate()')
    row = cursor.fetchone()
    return json.dumps(row[0])


@app.route('/notes')
def notes():
    cursor = mysql.connection.cursor()
    cursor.execute('select id,created,title,description from notes')
    rows = cursor.fetchall() 
    return json.dumps(rows)


if __name__ == "__main__":
    app.run(debug=True)
