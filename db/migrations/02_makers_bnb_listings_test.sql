CREATE DATABASE makers_bnb_test;
CREATE TABLE listings (listing_id SERIAL PRIMARY KEY, username VARCHAR(60), title VARCHAR(60), description VARCHAR(1000), price DEC(8,2), user_id INTEGER REFERENCES users (user_id));
