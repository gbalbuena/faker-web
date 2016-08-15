require 'rubygems'
require 'bundler/setup'

require 'sinatra/base'
require_relative 'faker_wrapper'

class App < Sinatra::Base

  get '/' do
    @address         = FakerWrapper.address
    @lorem           = FakerWrapper.lorem
    @game_of_thrones = FakerWrapper.game_of_thrones
    @pokemon         = FakerWrapper.pokemon
    erb :index, :layout => :default
  end

  FakerWrapper.address.each do |method|
    get "/Address/#{method}" do
      Faker::Address.send(method)
    end
  end

  FakerWrapper.lorem.each do |method|
    get "/Lorem/#{method}" do
      Faker::Lorem.send(method)
    end
  end

  FakerWrapper.game_of_thrones.each do |method|
    get "/GameOfThrones/#{method}" do
      Faker::GameOfThrones.send(method)
    end
  end

  FakerWrapper.pokemon.each do |method|
    get "/Pokemon/#{method}" do
      Faker::Pokemon.send(method)
    end
  end

end
