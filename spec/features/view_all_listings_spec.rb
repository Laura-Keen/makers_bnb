feature 'view listings' do
  scenario 'user can view all listings' do
    visit '/'
    sign_up
    create_listing
    click_link 'View All Listings'
    expect(page).to have_content 'bobisthebest'
    expect(page).to have_content 'My House'
    expect(page).to have_content '100'
    expect(page).to have_content '2 bedroom house'
  end
end

