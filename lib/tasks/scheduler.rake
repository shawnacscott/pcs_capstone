require 'rubygems'
require 'bundler/setup'
require 'daemons'

desc "Poll for email"
task :receive_email => :environment do
  'script/mailman_server'
end
