require 'sinatra'
require 'sinatra/reloader'
number = rand(100)
get '/' do
  guess = params["guess"]
  def check_guess(num)
    if (num.to_i>100)
      return "To high!"
      return "The secret_number is #{number}"
    end
  end
  message = check_guess(guess)
  erb :index, :locals => {:number => number, :message => message}
end
