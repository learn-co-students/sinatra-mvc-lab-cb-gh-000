require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

 post '/piglatinize' do
    @words = params['words']
    puts 'wrwrwrwwtwtw'
    pl = PigLatinizer.new
   @piglatin = pl.to_pig_latin(params['words'])
   erb :results
 end
end
