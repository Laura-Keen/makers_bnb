require 'sinatra/base'
require 'pg'

class BnB < Sinatra::Base
    
    get '/' do
        'Hello BnB'
    end

		get '/listings/new' do
		end

		post '/listings' do
		end

    run! if app_file == $0
end
