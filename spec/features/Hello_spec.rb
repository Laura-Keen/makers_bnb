feature 'says hello' do
    scenario 'Hi' do
        visit('/')
        expect(page).to have_content 'Hello BnB'
    end
end