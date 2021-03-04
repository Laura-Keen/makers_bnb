require 'pg'

def user_persisted_data(user_id:)
    connection = PG.connect :dbname => 'makers_bnb_test'
    result = connection.query("SELECT * FROM users WHERE user_id = #{user_id};")
    result.first
end

