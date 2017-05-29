require 'sinatra'
require 'JSON'
get '/' do
  'Hello, voter!'
  {greeting: 'Hello World!'}.to_json
  end


get '/email.json' do
  content_type :json
  { :email => 'user@mail.ru'}.to_json
end

get '/default.json' do
    content_type :json
    { :email => 'Admin', :password => 'Admin' }.to_json
    
end
