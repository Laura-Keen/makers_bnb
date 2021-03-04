feature 'new listing' do
    scenario 'user wants to add a new listing' do
      visit('/')
      sign_up
      sign_in
      click_link('New Listing')
      expect(page).to have_field('title')
      expect(page).to have_field('price')
      expect(page).to have_field('description')
    end
end
