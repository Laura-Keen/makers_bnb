feature 'first name appears on home page' do
	scenario 'user signs up and sees their name on homepage' do
		sign_up
		expect(page).not_to have_content("Sign Up")
		expect(page).to have_content("Hey bob! Welcome to Maker's BnB")	
	end
end