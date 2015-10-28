require 'sinatra'

# get'/' do
#   "Hello World"
# end

get '/this' do
  "Hello World"
end

get "/sinatra" do
"Hello Sinatra"
end

get "/" do
  File.read(File.join('public', 'hello.txt'))
end
