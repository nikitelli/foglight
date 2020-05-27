require 'data_mapper'
require 'sinatra'
require 'sinatra/reloader' if development?
#require 'slim'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/foglight.db")

set :bind, '0.0.0.0'
set :public_folder, 'public'
set :views, 'views'

class foglight
    include DataMapper::Resource
  
    property :id,           Serial  # An auto-increment integer key
    property :ldom,         String
    property :zonename,     String
    property :hostname,     String
    property :env,          String
    property :ip_address,   String
    property :pup_status,   String
    property :os_status,    String
    property :os_release,   String
    property :arch,         String
    property :mac_address,  String
    property :vlan,         String
    property :uptime,       String
    property :purpose,      String
    property :fqdn,         String
  end

#not_found do
#  slim :not_found
#end

get '/' do
  erb :home
end

#get '/about' do
#  @title = "Overview of SunOS nodes"
#  slim :about
#end

#get '/contact' do
#  slim :contact
#end
