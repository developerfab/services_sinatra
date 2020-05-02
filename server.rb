require 'sinatra'
require "sinatra/json"
require 'active_record'
require 'sinatra/activerecord'
require 'json'

require './service'

set :database, "sqlite3:db/services.sqlite3"

get '/services' do
  services = Service.all.to_json
  json JSON.parse(services)
end

post '/services' do
  params = JSON.parse(request.body.read).with_indifferent_access
  service = Service.create({ name: params[:name] })
  json JSON.parse(service.to_json)
end

delete '/services' do
  params = JSON.parse(request.body.read).with_indifferent_access
  service = Service.where(id: params[:id]).last
  if service.destroy
    json JSON.parse(service.to_json)
  else
    json service.errors
  end
end
