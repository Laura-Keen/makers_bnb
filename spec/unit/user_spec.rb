require 'user'


describe User do
    describe '# create' do 
        it 'creates a row in the database' do 
            # connection = PG.connect dbname: 'makers_bnb_test'
            # connection.exec "INSERT INTO users (first_name, last_name, username, email, password) 
            # VALUES ('Bob', 'Smith', 'bobby', 'bobby@smith.com', 'cabbage');"
            user = User.create(first_name: 'Bob', last_name: 'Smith', username: 'bobby', email: 'bobby@smith.com', password: 'cabbage')
            user_persisted_data = user_persisted_data(user_id: user.user_id)

            expect(user.first_name).to eq 'Bob'
            expect(user.last_name).to eq 'Smith'
            expect(user.username).to eq 'bobby'
            expect(user.email).to eq 'bobby@smith.com'
            expect(user.password).to eq 'cabbage'
            expect(user.user_id).to eq user_persisted_data['user_id']
        end
    end
end