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