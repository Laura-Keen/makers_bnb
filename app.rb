require_relative './lib/user.rb'
require 'sinatra/base'
require 'pg'

class BnB < Sinatra::Base

enable :sessions

    get '/' do   
			@first_name = session[:first_name]
	
      erb :index				
    end

    get '/signup' do
        erb :signup
    end

    post '/signup' do
			@user = User.create(
				first_name: params[:first_name],
				last_name: params[:last_name],
				username: params[:username],
				email: params[:email],
				password: params[:password]
			)
			session[:first_name] = @user.first_name
			redirect ('/')
    end

    get '/listings/new' do
      erb :listings_new
		end

    post '/listings' do
      session[:title] = params[:Title]
      session[:price] = params[:Price]
      session[:description] = params[:Description]
      redirect('/')
		end
 

    run! if app_file == $0
end
