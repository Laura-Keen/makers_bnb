require 'sinatra/base'
require 'pg'

class BnB < Sinatra::Base
    
    get '/' do
        'Hello BnB'
    end

    get '/listings/new' do
      erb :listings_new
		end

    post '/listings' do
      redirect('/')
		end

    run! if app_file == $0
end
