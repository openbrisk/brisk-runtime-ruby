require 'sinatra'

get '/healthz' do
    #logger.info "loading data"
    status 200
    headers \
        "Content-type" => "text/plain"
end

get '/' do
    status 200
    headers \
        "Content-type" => "text/plain"
end

post '/' do
    status 200
    headers \
        "Content-type" => "text/plain"    
end