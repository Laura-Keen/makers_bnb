require_relative './lib/user.rb'
require 'sinatra/base'
require 'sinatra/flash'
require 'pg'
require './lib/listings.rb'

class BnB < Sinatra::Base

enable :sessions
register Sinatra::Flash

    get '/' do   
			@first_name = session[:first_name]
	
      erb :index				
    end

    get '/sessions/new' do
      erb :signin
    end

    post '/sessions' do
      user = User.authenticate(username: params[:username], password: params[:password])
      
      if user
        session[:username] = user.username
        session[:first_name] = user.first_name
        session[:user_id] = user.user_id
        redirect('/')
      else
        flash[:notice] = 'Please check your username or password'
        redirect('/sessions/new')
      end
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
			redirect ('/sessions/new')
    end

    get '/listings/new' do
      erb :listings_new
		end

    get '/listings' do
      @listings = Listings.all
      erb :listings
    end

    post '/listings' do
      listings = Listings.create(username: session[:username], title: params['title'], description: params['description'], price: params['price'])
      redirect('/')
		end

    get '/logout' do
      session.clear
      erb :index
    end

    
 

    run! if app_file == $0
end
