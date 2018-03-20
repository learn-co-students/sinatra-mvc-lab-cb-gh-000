require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    changer = PigLatinizer.new
    @word = changer.piglatinize(params[:user_phrase])

    erb :user_output
  end
end
