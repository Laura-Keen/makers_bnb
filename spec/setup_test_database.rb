require 'pg'

def setup_test_database
connection = PG.connect(dbname: 'makers_bnb_test')
# Clear the bookmarks table
connection.exec("TRUNCATE users;") 
connection.exec("TRUNCATE listings;")
end

