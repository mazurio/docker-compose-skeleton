require 'sinatra'
require 'sinatra/reloader'
require 'require_all'

module RubyService
  class Api < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end
  end
end

require_all './app/routes'