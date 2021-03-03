require 'listings'
require 'pg'

describe Listings do

    describe '.create' do
        it 'allows a new listing to be added' do
            listings = Listings.create(username: 'bob', title: 'my house', description: 'it is tiny', price: '50.00')
            #persisted_data = persisted_data(listing_id: listings.listing_id)
            expect(listings).to be_a Listings
            #expect(listings.listing_id).to eq persisted_data['listing_id']
            expect(listings.username).to eq 'bob'
            expect(listings.title).to eq 'my house'
            expect(listings.description).to eq 'it is tiny'
            expect(listings.price).to eq '50.00'
        end
    end
end