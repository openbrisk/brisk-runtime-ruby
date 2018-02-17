require 'sinatra'
require 'json'
require_relative 'loader'

load "/openbrisk/#{ENV["MODULE_NAME"]}.rb"

get '/healthz' do
    status 200
    content_type :text
    "" 
end

get '/' do
    status 200
    function = Loader.new.loadFunction
    function.call
end

post '/' do
    status 200
    function = Loader.new.loadFunction
    function.call request.body.read.to_s
end
