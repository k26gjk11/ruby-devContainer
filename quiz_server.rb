#! /usr/local/bin/ruby
#quiz_server.rb
#

require 'socket'

def server s
  
end

gs = TCPServer.open(8080)

loop do
  pp "start accept"
  s = gs.accept
  Thread.new do
    server s
    sleep 10
  end
end