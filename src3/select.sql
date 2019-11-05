SELECT * FROM flights;
SELECT origin, destination FROM flights;
SELECT * FROM flights WHERE id = 3;
SELECT * FROM flights WHERE origin = 'New York';
SELECT * FROM flights WHERE duration > 500;
SELECT * FROM flights WHERE destination = 'Paris' AND duration > 500;
SELECT * FROM flights WHERE destination = 'Paris' OR duration > 500;
SELECT COUNT(*) FROM flights;
SELECT AVG(duration) FROM flights;
SELECT AVG(duration) FROM flights WHERE origin = 'New York';
SELECT * FROM flights WHERE origin LIKE '%a%';
SELECT * FROM flights LIMIT 2;
SELECT * FROM flights ORDER BY duration ASC;
SELECT * FROM flights ORDER BY duration ASC LIMIT 3;
SELECT origin, COUNT(*) FROM flights GROUP BY origin;
SELECT origin, COUNT(*) FROM flights GROUP BY origin HAVING COUNT(*) > 1;
SELECT MAX(duration) from flights;
SELECT MIN(duration) from flights;
SELECT origin, destination, name FROM flights JOIN passengers ON passengers.flight_id = flights.id;
SELECT origin, destination, name FROM flights JOIN passengers ON passengers.flight_id = flights.id WHERE name = 'Alice';
SELECT origin, destination, name FROM flights LEFT JOIN passengers ON passengers.flight_id = flights.id;
SELECT SUM(rating) FROM reviews WHERE isbn ='0062284835';
db.execute("SELECT isbn,COUNT(*) FROM reviews GROUP BY isbn HAVING isbn =:isbn",{"isbn":isbn}).fetchone()
score = db.execute("SELECT AVG(rating) FROM reviews WHERE isbn =:isbn",{"isbn":isbn}).fetchall()

  import os
import csv

from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker

# Check for environment variable
if not os.getenv("DATABASE_URL"):
    raise RuntimeError("DATABASE_URL is not set")

# Set up database
engine = create_engine(os.getenv("DATABASE_URL"))
db = scoped_session(sessionmaker(bind=engine))

def main():
    file = open("books.csv")
    reader = csv.reader(file)
    next(reader, None)
    try:
        for isbn, title, author, year in reader:
            db.execute("INSERT INTO books (isbn, title, author, year) VALUES (:isbn, :title, :author, :year)", 
            {"isbn": isbn, "title": title, "author": author, "year": year})
            print(f"The book {title} written by {author} in {year} has been added into database.")
        db.commit()
    except:
        print("Something went wrong in adding the records into database")
if __name__ == "__main__":
    main()
    port requests
res = requests.get("https://www.goodreads.com/book/review_counts.json", params={"key": "nyl5lAQETqTmqyKtHcULRA", "isbns": "9781632168146"})
print(res.json())

{'books': [{
'id': 29207858, 
'isbn': '1632168146', 
'isbn13': '9781632168146', 
'ratings_count': 0, 
'reviews_count': 2, 
'text_reviews_count': 0, 
'work_ratings_count': 27, 
'work_reviews_count': 122, 
'work_text_reviews_count': 10, 
'average_rating': '4.07'}
]}

{'books': [{
'id': 5349, 
'isbn': '0385339607', 
'isbn13': '9780385339605', 
'ratings_count': 14 60 57, 
'reviews_count': 19 23 13, 
'text_reviews_count': 1 400, 
'work_ratings_count': 15 28 11, 
'work_reviews_count': 20 57 54, 
'work_text_reviews_count': 1751, 
'average_rating': '3.93'}
]}

SELECT AVG(rating) FROM reviews WHERE isbn ='0062284835';


























































