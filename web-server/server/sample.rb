# gem install sinatra
require 'rubygems'
require 'sinatra'

set :bind, '0.0.0.0'

names = {}

get '/' do
  "Hello World! -- Your IP address is #{request.ip}"
end

get '/list' do
  @names = names
  erb :list
end

get '/:name' do
  name = params[:name]
  names[request.ip] = name
  puts "Registering NAME:#{name} IP:#{request.ip}"
  "Hello #{name} -- Your IP address is #{request.ip}"
end
