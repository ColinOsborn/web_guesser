require "sinatra"
require "sinatra/reloader"

get "/" do
  number = rand(10)
    response = params["guess"].to_i
    message = responder(response, number)
    erb :index, :locals => {:number => number, :message => message}
  end

  SECRET_NUMBER = rand(10)

  def responder(response, number)
    if response.to_i > SECRET_NUMBER
      "Too High!"
    elsif response.to_i < SECRET_NUMBER
      "Too Low!"
    else response.to_i == SECRET_NUMBER
      "You got it right!"
    end
  end
