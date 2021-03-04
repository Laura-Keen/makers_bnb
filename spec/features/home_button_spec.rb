feature 'home button' do
  scenario 'user can go back to the homepage from signup page' do
    visit('/signup')
    click_link 'Home'
    expect(page).to have_content 'Makers B&B'
  end

  scenario 'user can go back to the homepage from signin page' do
    visit('/sessions/new')
    click_link 'Home'
    expect(page).to have_content 'Makers B&B'
  end

  scenario 'user can go back to the homepage new listing page' do
    visit('/listings/new')
    click_link 'Home'
    expect(page).to have_content 'Makers B&B'
  end

  scenario 'user can go back to the homepage from view listings page' do
    visit('/listings')
    click_link 'Home'
    expect(page).to have_content 'Makers B&B'
  end
end
