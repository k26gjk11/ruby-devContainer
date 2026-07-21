#! /usr/local/bin/ruby
#quiz_client.rb
#

require 'socket'

host = "localhost"
port = 8080

sock = TCPSocket.new host, port

3.times do
  puts sock.gets
  answer = gets.chomp
  sock.puts answer
  puts sock.gets
end