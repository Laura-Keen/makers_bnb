feature 'logout' do
  scenario 'user can logout of their account' do
    sign_up
    sign_in
    click_link 'Log Out'
    expect(page).to have_content 'Sign In'
    expect(page).to have_content 'Sign Up'
  end
end