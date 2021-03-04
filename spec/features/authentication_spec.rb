feature 'authentication' do
    scenario 'a user can sign in' do
        sign_up
        sign_in
        expect(page).to have_content 'Hey bob'
    end


    scenario  'user provides incorrect log in details' do
        sign_up
        visit('/sessions/new')
	    fill_in :username, with: 'bobster'
        fill_in :password, with: 'cabbage'
        click_button('Sign in')

        expect(page).not_to have_content 'Hey bob'
        expect(page).to have_content 'Please check your username or password'
    end
end