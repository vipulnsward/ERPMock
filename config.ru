# This file is used by Rack-based servers to start the application.
#worker_processes 2 # assuming four CPU cores
require ::File.expand_path('../config/environment',  __FILE__)
run MyMock::Application

