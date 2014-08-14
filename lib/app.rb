#
# ¯\_(ツ)_/¯
#
require 'rubygems'
require 'sinatra/base'
require 'sinatra/contrib/all'
require_relative 'sinatra_bootstrap'

class SinatraBootstrapApp < Sinatra::Base
  # use Rack::MethodOverride
  
  register Sinatra::Contrib
  register Sinatra::ConfigFile
  
  helpers Sinatra::SinatraBootstrapApp::Helpers
  
  set :root, File.dirname(File.dirname(__FILE__))
  set :sessions, true
  set :logging, true
  configure(:development) { 
    set :session_secret, "secret"
    set :logging, Logger::DEBUG
  }

  config_file 'config/config.yml'

  get "/" do
    "OK"
  end
  
  not_found do
    'This is nowhere to be found.'
  end

  error do
    'Sorry there was a nasty error - ' + env['sinatra.error'].name
  end

end

