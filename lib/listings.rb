require 'pg'

class Listings
attr_reader :listing_id, :username, :title, :description, :price

    def initialize(listing_id:, username:, title:, description:, price:)
        @listing_id = listing_id
        @username = username
        @title = title
        @description = description
        @price = price
    end

    def self.create(username:, title:, description:, price:)
        if ENV['ENVIRONMENT'] == 'test'
          connection = PG.connect(dbname: 'makers_bnb_test')
        else
          connection = PG.connect(dbname: 'makers_bnb')
        end
        result = connection.exec("INSERT INTO listings (username, title, description, price) VALUES('#{username}', '#{title}', '#{description}', '#{price}') RETURNING listing_id, username, title, description, price;")

        Listings.new(listing_id: result[0]['listing_id'], username: result[0]['username'], title: result[0]['title'], description: result[0]['description'], price: result[0]['price'])

    end
end