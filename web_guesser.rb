require "sinatra"
require "sinatra/reloader"

get "/" do
  number = rand(10)
  erb :index, :locals => {:number => number}
end
