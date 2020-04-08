#!/usr/local/bin/ruby

#connects to the environment file in the config folder
require_relative "../config/environment"

#calls on the CLI class, creats a new instance, that calls on the open instance method
CLI.new.open
