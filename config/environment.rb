require 'httparty' #gem file to grab the api
require 'pry'

#relative file inside the app
#connects to the api, cli, and version file in the gameapi_info folder
require_relative "../lib/gameapi_info/api"
require_relative "../lib/gameapi_info/cli"
require_relative "../lib/gameapi_info/beer"
require_relative "../lib/gameapi_info/version"
