require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig = PigLatinizer.new
    @user_input = params[:user_phrase].to_s
    erb :final
  end

end
