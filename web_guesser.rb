require "sinatra"
require "sinatra/reloader"

get "/" do
  num = rand(10)
  "The SECRET new number is #{num}!"
end
