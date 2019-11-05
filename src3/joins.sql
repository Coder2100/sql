CREATE TABLE passengers (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    flight_id INTEGER REFERENCES flights
);

INSERT INTO passengers (name, flight_id) VALUES ('Alice', 1);
INSERT INTO passengers (name, flight_id) VALUES ('Bob', 1);
INSERT INTO passengers (name, flight_id) VALUES ('Charlie', 2);
INSERT INTO passengers (name, flight_id) VALUES ('Dave', 2);
INSERT INTO passengers (name, flight_id) VALUES ('Erin', 4);
INSERT INTO passengers (name, flight_id) VALUES ('Frank', 6);
INSERT INTO passengers (name, flight_id) VALUES ('Grace', 6);


SELECT origin, destination, name FROM flights INNER JOIN passengers ON passengers.flight_id = flights.id;
SELECT origin, destination, name FROM flights JOIN passengers ON passengers.flight_id = flights.id;
SELECT origin, destination, name FROM flights LEFT OUTER JOIN passengers ON passengers.flight_id = flights.id;
SELECT origin, destination, name FROM flights RIGHT OUTER JOIN passengers ON passengers.flight_id = flights.id;
SELECT origin, destination, name FROM flights JOIN passengers ON passengers.flight_id = flights.id;
SELECT origin, destination, name FROM flights JOIN passengers ON passengers.flight_id = flights.id WHERE name = 'Alice';
SELECT origin, destination, name FROM flights LEFT JOIN passengers ON passengers.flight_id = flights.id;
SELECT destination, origin, duration FROM flights JOIN passengers ON passengers.flight_id = flights.id;
SELECT * FROM flights WHERE id IN (SELECT flight_id FROM passengers GROUP BY flight_id HAVING COUNT(*) > 1);
- Adminer 4.6.3-dev PostgreSQL dump

DROP TABLE IF EXISTS "books";
DROP SEQUENCE IF EXISTS books_id_seq;
CREATE SEQUENCE books_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."books" (
    "id" integer DEFAULT nextval('books_id_seq') NOT NULL,
    "isbn" character varying NOT NULL,
    "title" character varying NOT NULL,
    "author" character varying NOT NULL,
    "year" integer NOT NULL,
    CONSTRAINT "books_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "reviews";
DROP SEQUENCE IF EXISTS reviews_id_seq;
CREATE SEQUENCE reviews_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."reviews" (
    "id" integer DEFAULT nextval('reviews_id_seq') NOT NULL,
    "rating" integer NOT NULL,
    "message" character varying NOT NULL,
    "isbn" character varying NOT NULL,
    "name" character varying NOT NULL,
    "review_date" timestamp DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "reviews_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "users";
DROP SEQUENCE IF EXISTS users_id_seq;
CREATE SEQUENCE users_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."users" (
    "id" integer DEFAULT nextval('users_id_seq') NOT NULL,
    "name" character varying NOT NULL,
    "password" character varying NOT NULL,
    "registration" timestamp DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
) WITH (oids = false);