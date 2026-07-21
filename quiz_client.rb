#! /usr/local/bin/ruby
#quiz_client.rb
#

require 'socket'

host = "localhost"
port = 8080

sock = TCPSocket.new host, port