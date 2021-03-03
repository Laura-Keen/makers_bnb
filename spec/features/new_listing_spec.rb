feature 'new listing' do
    scenario 'user wants to add a new listing' do
      visit('/listings/new')
      
      expect(page).to have_field('Username')
      expect(page).to have_field('Title')
      expect(page).to have_field('Price')
      expect(page).to have_field('Description')
    end
end
