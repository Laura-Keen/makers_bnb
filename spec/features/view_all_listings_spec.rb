feature 'view listings' do
  scenario 'user can view all listings' do
    visit '/'
    sign_up
    sign_in
    create_listing
    click_link 'View All LilyPads'
    expect(page).to have_content 'bobby'
    expect(page).to have_content 'My House'
    expect(page).to have_content '100'
    expect(page).to have_content '2 bedroom house'
  end
end

