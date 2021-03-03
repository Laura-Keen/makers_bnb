require 'sinatra/base'
require 'pg'
require './lib/listings.rb'

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
			session[:first_name] = params[:first_name]
			session[:last_name] = params[:last_name]
			session[:username] = params[:username]
			session[:email] = params[:email]
			session[:password] = params[:password]
			redirect ('/')
    end

    get '/listings/new' do
      erb :listings_new
		end

    post '/listings' do
      listings = Listings.create(username: params['username'], title: params['title'], description: params['description'], price: params['price'])
      # session[:title] = params[:Title]
      # session[:price] = params[:Price]
      # session[:description] = params[:Description]
      redirect('/')
		end
 

    run! if app_file == $0
end
