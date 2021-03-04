def sign_up
	visit ('/')
	click_link 'Sign Up'
	fill_in :first_name, with: 'bob'
	fill_in :last_name, with: 'smith'
	fill_in :username, with: 'bobby'
	fill_in :email, with: 'bob@smith.com'
	fill_in :password, with: 'cabbage'
	click_button 'Sign Up'
end

def sign_in
	visit('/sessions/new')
	fill_in :username, with: 'bobby'
    fill_in :password, with: 'cabbage'
    click_button('Sign in')
end

def create_listing
  visit 'listings/new'
  fill_in('username', with: 'bobby')
  fill_in('title', with: 'My House')
  fill_in('price', with: '100')
  fill_in('description', with: '2 bedroom house')
  click_button('Submit')
end