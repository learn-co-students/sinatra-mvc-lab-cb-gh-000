require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    piglanitizer = PigLatinizer.new

    @translated = piglanitizer.to_pig_latin(params[:user_phrase])
    erb :translated
  end
end
