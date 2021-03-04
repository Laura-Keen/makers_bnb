feature 'authentication' do
    scenario 'a user can sign in' do
        sign_up
        sign_in
        expect(page).to have_content 'Hey bob'
    end
end