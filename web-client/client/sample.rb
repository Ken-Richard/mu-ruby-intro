# gem install httparty
require 'httparty'

class Client
  include HTTParty

  base_uri "http://192.168.1.12:4567"

  def self.hello_world
    get("")
  end

  def self.hello(name)
    get("/#{name}")
  end

end

puts Client.hello_world
puts Client.hello "Ken"
