feature 'authentication' do
    scenario 'a user can sign in' do
        User.create(first_name: 'Jimmy', last_name: 'Hasslehoff', username: 'jimmytwothumbs', email: 'jimmyisthebest@jimmy.com', password: '1234')

        visit('sessions/new') 
        fill_in(:username, with: 'jimmytwothumbs')
        fill_in(:password, with: '1234')
        click_button('Sign in')

        expect(page).to have_content 'Hey Jimmy'
    end
end