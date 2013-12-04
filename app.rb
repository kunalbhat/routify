require 'sinatra'

include RoutingHelpers

routify :about, :contact, :faq

get '/' do
  haml :index
end
