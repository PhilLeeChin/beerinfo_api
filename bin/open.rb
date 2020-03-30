#!/usr/local/bin/ruby

#connects to the environment file in the config file
require_relative "../config/environment"

#calls on the CLI class, creating an new instance with the open instance method
CLI.new.open
