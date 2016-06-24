require 'rubygems'
require 'bundler/setup'

require 'sinatra/base'
require 'faker'


class ApplicationController < Sinatra::Base

  get "/lorem" do
    Faker::Lorem.paragraph
  end

end
