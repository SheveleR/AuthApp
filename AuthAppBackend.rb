require 'sinatra'
require 'JSON'
get '/' do
  'Hello, voter!'
  {greeting: 'Hello World!'}.to_json
  end


get '/registration' do
  content_type :json
  { :email => 'user@mail.ru'}.to_json
end

get '/login' do
    content_type :json
    { :email => 'Admin', :password => 'Admin' }.to_json
    
end
