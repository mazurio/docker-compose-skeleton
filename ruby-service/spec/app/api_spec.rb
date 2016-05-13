require './spec/spec_helper'
require 'rspec/core'

describe 'GET API' do
  context 'Status' do
    it 'shows status' do
      get "/status"

      body = JSON::parse(last_response.body)

      expect(body['status']).to eq("Ok")
      expect(body['statusCode']).to eq(200)
    end
  end

  context 'Context' do
    it 'prints service name' do
      get "/"

      body = JSON::parse(last_response.body)

      expect(body['message']).to eq("ruby-service")
      expect(last_response.status).to eq 200
    end
  end
end