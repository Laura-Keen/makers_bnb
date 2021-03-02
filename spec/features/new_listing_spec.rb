feature 'new listing' do
    scenario 'user wants to add a new listing' do
        # visit /listings/new
        visit('/listings/new')
        # expect to see form
        expect(page).to have_field('Title')
        expect(page).to have_field('Price')
        expect(page).to have_field('Description')
        # fill out the form
        fill_in('Title', with: 'My House')
        fill_in('Price', with: '100')
        fill_in('Description', with: '2 bedroom house')
        click_button('Submit')
    end
end

#expect page to have xpath