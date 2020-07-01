require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/' do
    doc = File.read("monetary_and_exchange_rate.json")

    @new = JSON.parse(doc)
    @monetary = @new[0].keys

    erb :index
end




