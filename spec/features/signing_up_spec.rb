feature 'sign up' do
  scenario 'user creates an account' do
    visit ('/')
    click_link 'Sign Up'
    fill_in :first_name, with: 'bob'
    fill_in :last_name, with: 'smith'
    fill_in :username, with: 'test user'
    fill_in :email, with: 'testuser@example.com'
    fill_in :password, with: 'password123'
    click_button 'Sign Up'
    expect(current_path).to eq ('/')
  end
end