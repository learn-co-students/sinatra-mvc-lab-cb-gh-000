require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    translator = PigLatinizer.new
    @translated = translator.piglatinize(params[:user_phrase])
    erb :translation
  end

end
