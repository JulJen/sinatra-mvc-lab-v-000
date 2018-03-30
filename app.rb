require_relative 'config/environment'
# require_relative "models/piglatinizer.rb"

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    go = PigLatinizer.new

    if params[:user_phrase].split(" ").count == 1
      @piglatinized_string = go.piglatinize(params[:user_phrase])
    else
      @piglatinized_string = go.pig_latin(params[:user_phrase])
    end
    erb :results
  end
end

#     @piglatinize = go.translate(params[:user_phrase])
#     erb :results
#   end
# end
