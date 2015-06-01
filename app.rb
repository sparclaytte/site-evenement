require 'sinatra'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(
	:adapter => 'sqlite3',
	:database => 'db/dev.db'
	)
ActiveRecord::Base.default_timezone=:local


class Contact < ActiveRecord::Base
end

get '/' do
	erb :home
end

get '/cache' do
	@donnees = Contact.all
	erb :cache

end

get '/input' do
	erb :input
end

post '/formulaire' do
	@client = Contact.new(params[:formulaire])
	@client.save
	redirect '/'
end




