require 'sinatra'

require_relative 'lib/helpers/routing_helpers'

include RoutingHelpers

routify :about, :contact, :faq

get '/' do
  haml :index
end
