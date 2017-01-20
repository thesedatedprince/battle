require 'rubygems'
require File.join(File.dirname(__FILE__), 'app.rb')
require 'logger'

# configure do
#   log_dir = "#{root}/log"
#   Dir.mkdir(log_dir) unless Dir.exists?(log_dir)
#   file = File.new("#{log_dir}/#{environment}.log", 'a+')
#   file.sync = true
#   use Rack::CommonLogger, file
# end
run Battle
