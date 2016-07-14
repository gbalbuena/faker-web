require 'rubygems'
require 'bundler/setup'

require 'sinatra/base'
require_relative 'faker_utils'

class App < Sinatra::Base

  get '/' do
    @lorem = FakerUtils.lorem
    erb :index
  end

  FakerUtils.lorem.each do |method|
    get "/Lorem/#{method}" do
      Faker::Lorem.send(method)
    end
  end

end
