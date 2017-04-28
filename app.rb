require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatinizer = PigLatinizer.new
    @user_phrase = params[:user_phrase]
    @piglatin_phrase = @piglatinizer.to_pig_latin(@user_phrase)
    erb :piglatinize
  end
end