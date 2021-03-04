feature 'sign up' do
  scenario 'user creates an account' do
		sign_up
    expect(current_path).to eq ('/sessions/new')
  end
end