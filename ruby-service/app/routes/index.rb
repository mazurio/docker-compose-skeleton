require 'sinatra'
require 'sinatra/json'

module RubyService
  Api.get '/' do
    json :service => 'ruby-service'
  end
end