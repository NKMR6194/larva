require 'bundler'
Bundler.require
require 'sinatra/reloader' if settings.development?
require_relative 'model/model'

configure do
  Encoding.default_external = 'utf-8'
end

configure :development do
  register Sinatra::Reloader
end

helpers do

end

get '/' do
  erb :index
end
