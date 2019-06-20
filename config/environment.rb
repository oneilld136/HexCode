# Load the Rails application.
require_relative 'application'

require 'bundler'
Bundler.require
require 'json'
require 'open-uri'
require 'date'
require 'colorize'
require 'erb'

# require_all 'lib'

# Initialize the Rails application.
Rails.application.initialize!
