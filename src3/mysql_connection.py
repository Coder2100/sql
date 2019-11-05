import mysql.connector
import csv



mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "",
    database = "flights"
)

db = mydb.cursor()


#db .execute("CREATE DATABASE flights")

#db.execute("USE flights")
#db.execute("SHOW TABLES")
#db.execute("SELECT * FROM flights")
#for x in db:
#    print(x)
db.execute("SELECT * FROM flights")

results = db.fetchall()

#for x in results:
 #   print(x)

#inserting into db using the file.io's flask as csv

flights = open("flights.csv")
reader = csv.reader(flights)
for origin, destination, duration in reader:
    db.execute("INSERT INTO flights (origin, destination, duration) VALUES (:origin, :destination, :duration)", {"origin": origin, "destination": destination, "duration": duration}
db.commit()
