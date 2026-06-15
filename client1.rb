#! /usr/local/bin/ruby
#client1.rb

require 'socket'

host = 'www.is.kyusan-u.ac.jp'
port = 'http'
path = '/~toshi~'

sock = TCPSocket.new host, port
pp 'GET ' + path
sock.print 'GET ' + path + "\r\n"

while line = sock.gets
  puts line
end