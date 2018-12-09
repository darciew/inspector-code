# frozen_string_literal: true

require './config/environment'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  post '/username' do
    @username = params[:username]
    redirect '/results'
  end

  get '/results' do
    "Results"
  end
end
