# Deploy as a web service using Sinatra
# before you'll be able to run this you'll need 'gem install sinatra'

require 'sinatra'
require_relative 'ticket_office.rb'
require_relative './models/reservation'

post '/reserve' do
  office = TicketOffice.new
  office.make_reservation(request.body)
end

get '/data_for_train/:train' do
  office = TicketOffice.new

  office.get_data_for_train(params['train'])
end

configure do
  set :port, '8083'
end
