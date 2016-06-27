require 'rubygems'
require 'bundler/setup'

require 'sinatra/base'
require 'faker'

class App < Sinatra::Base

  Faker::Address.methods.each do |method|
    get "/Address/#{method}" do
      Faker::Address.send(method)
    end
  end

  Faker::Lorem.methods.each do |method|
    get "/Lorem/#{method}" do
      Faker::Lorem.send(method)
    end
  end

end
