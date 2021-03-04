require 'pg'

task :test_database_setup do
    connection = PG.connect(dbname: 'makers_bnb_test')
    connection.exec("TRUNCATE TABLE listings, users;") 
end

task :setup do
    p "Creating databases..."
  
    connection = PG.connect
    connection.exec("CREATE DATABASE makers_bnb;")
    connection.exec("CREATE DATABASE makers_bnb_test;")
  
    connection = PG.connect(dbname: 'makers_bnb')
    connection.exec("CREATE TABLE users (user_id SERIAL PRIMARY KEY, first_name VARCHAR(60), last_name VARCHAR(60), username VARCHAR(60) UNIQUE, email VARCHAR(300) UNIQUE, password VARCHAR(60));")
    connection.exec("CREATE TABLE listings(listing_id SERIAL PRIMARY KEY, username VARCHAR(60), title VARCHAR(60), description VARCHAR(1000), price DEC(8,2), user_id INTEGER REFERENCES users (user_id));")
  
    connection = PG.connect(dbname: 'makers_bnb_test')
    connection.exec("CREATE TABLE users (user_id SERIAL PRIMARY KEY, first_name VARCHAR(60), last_name VARCHAR(60), username VARCHAR(60) UNIQUE, email VARCHAR(300) UNIQUE, password VARCHAR(60));")
    connection.exec("CREATE TABLE listings(listing_id SERIAL PRIMARY KEY, username VARCHAR(60), title VARCHAR(60), description VARCHAR(1000), price DEC(8,2), user_id INTEGER REFERENCES users (user_id));")
  end