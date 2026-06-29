#! /usr/local/bin/ruby
# server1.rb
#
require 'socket'

gs = TCPServer.open 'http'
s = gs.accept
while line = s.gets
  pp line
  s.puts line
end