require 'rubygems'
require 'bundler/setup'

require 'sinatra'
require 'faker'

get '/lorem' do
  Faker::Lorem.paragraph
end
