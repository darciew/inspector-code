# frozen_string_literal: true

require './config/environment'

class ApplicationController < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, '@3x!ilt£'
    set :public_folder, 'public'
    set :views, 'app/views'
    set :raise_errors, false
    set :show_exceptions, false
  end

  get '/' do
    erb :index
  end

  post '/username' do
    @github = GithubApi.new(params[:username])
    @results = Results.new(@github)
    @language = @results.favourite_language
    session[:language] = @language
    session[:username] = params[:username]
    redirect '/results'
  end

  get '/results' do
    @language = session[:language]
    @username = session[:username]
    erb :results
  end

  error do
    erb :invalid
  end

  run! if app_file == $PROGRAM_NAME
end
