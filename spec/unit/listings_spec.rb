require 'listings'
require 'pg'
require 'database_helpers'

describe Listings do

    describe '.create' do
        it 'allows a new listing to be added' do
            listings = Listings.create(username: 'bob', title: 'my house', description: 'it is tiny', price: '50.00')
            persisted_data = persisted_data(listing_id: listings.listing_id)

            expect(listings).to be_a Listings
            expect(listings.listing_id).to eq persisted_data['listing_id']
            expect(listings.username).to eq 'bob'
            expect(listings.title).to eq 'my house'
            expect(listings.description).to eq 'it is tiny'
            expect(listings.price).to eq '50.00'
        end
    end

    describe '.all' do
      it 'allows user to see all listings' do
        #connection = PG.connect(dbname: 'makers_bnb')

     listing = Listings.create(username: 'bob', title: 'my house', description: 'it is tiny', price: '50.00')
     Listings.create(username: 'bill', title: 'my apartment', description: 'it is massive', price: '1000.00')

     listings = Listings.all

     expect(listings.length).to eq 2
     expect(listings.first).to be_a Listings
     expect(listings.first.listing_id).to eq listing.listing_id
     expect(listings.first.username).to eq 'bob'
     expect(listings.first.title).to eq 'my house'
     expect(listings.first.description).to eq 'it is tiny'
     expect(listings.first.price).to eq '50.00'
      end
    end
end