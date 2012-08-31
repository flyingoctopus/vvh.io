require 'rubygems'
require 'bundler'
require 'barista'

Bundler.setup

require 'sinatra'
require './vvh'

use Barista::Filter if Barista.add_filter?
use Barista::Server::Proxy

run Sinatra::Application

ENV['RACK_ENV']='production'

# quietly look at giving 
# there will always be a need for authentication
#

# https://github.com/dennmart/mongoshort
