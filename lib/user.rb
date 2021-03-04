require 'pg'
class User
    attr_reader :user_id, :first_name, :last_name, :username, :email, :password
    def initialize(user_id:, first_name:, last_name:, username:, email:, password:)
        @user_id = user_id
        @first_name = first_name
        @last_name = last_name
        @username = username
        @email = email
        @password = password
    end   

    def self.create(first_name:, last_name:, username:, email:, password:)
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'makers_bnb_test')
        else
            connection = PG.connect(dbname: 'makers_bnb')
        end
        result = connection.exec("INSERT INTO users (first_name, last_name, username, email, password) 
        VALUES ('#{first_name}', '#{last_name}', '#{username}', '#{email}', '#{password}') 
        RETURNING user_id, first_name, last_name, username, email, password;")
        # p result
        User.new(user_id: result[0]['user_id'], first_name: result[0]['first_name'], last_name: result[0]['last_name'], username: result[0]['username'], email: result[0]['email'], password: result[0]['password'])
    end  

    def self.authenticate(username:, password:)
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'makers_bnb_test')
        else
            connection = PG.connect(dbname: 'makers_bnb')
        end

        result = connection.exec("SELECT * FROM users WHERE username = '#{username}'")
        User.new(user_id: result[0]['user_id'], username: result[0]['username'], first_name: result[0]['first_name'], last_name: result[0]['last_name'], password: result[0]['password'], email: result[0]['email'])

    end    
end
