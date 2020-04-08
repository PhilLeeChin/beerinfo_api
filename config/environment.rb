require 'httparty' #gem file to grab the api
require 'pry'

#relative file inside the app
#connects to the api, cli, and version file in the beerinfo_api folder
require_relative "../lib/beerinfo_api/api"
require_relative "../lib/beerinfo_api/cli"
require_relative "../lib/beerinfo_api/beer"
require_relative "../lib/beerinfo_api/version"
