require 'active_record'
require 'json'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/json'

require './service'

set :database, "sqlite3:db/services.sqlite3"

before do
  message = request.body.read
  @params = JSON.parse(message).with_indifferent_access if message.present?
end

get '/services' do
  services = Service.all
  json services
end

post '/services' do
  service = Service.new({ name: @params[:name] })
  if service.save
    json service
  else
    json service.errors
  end
end

delete '/services' do
  service = Service.where(id: @params[:id]).last
  if service.destroy
    json service
  else
    json service.errors
  end
end
