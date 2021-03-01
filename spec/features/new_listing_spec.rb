feature 'new listing' do
    scenario 'user wants to add a new listing' do
        # visit /listings/new
        visit('/listings/new')
        # expect to see form
        expect(page).to have_field('Address')
        # fill out the form
        fill_in('Address', with: 'My House')
        click_button('Submit')
    end
end