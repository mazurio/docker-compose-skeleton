require 'sinatra'
require 'sinatra/json'

module RubyService
  Api.get '/status' do
    json({:status => "Ok", :statusCode => 200})
  end
end