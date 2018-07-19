require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text = params[:user_phrase]
    pigLatinizer = PigLatinizer.new
    @translated_text = pigLatinizer.piglatinize(text)
    erb :piglatinize
  end
end
