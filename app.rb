require_relative 'config/environment'
# require_relative "models/piglatinizer.rb"

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    go = PigLatinizer.new

    @piglatinize = go.piglatinize(params[:user_phrase])
    erb :results
  end
end
