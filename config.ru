# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
# require 'unicorn/preread_input'
# if defined?(Unicorn)
#   use Unicorn::PrereadInput
# end
run Wordgame::Application
