require 'pg'

def persisted_data(listing_id:)
  connection = PG.connect(dbname: 'makers_bnb_test')
  result = connection.query("SELECT * FROM listings WHERE listing_id = #{listing_id};")
  result.first
end