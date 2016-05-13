require 'rubygems'
require 'bundler'

Bundler.require(:default)
Bundler.require(Sinatra::Base.environment)

set :bind, '0.0.0.0'
set :port, 80

require './app/api.rb'