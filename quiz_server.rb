#! /usr/local/bin/ruby
#quiz_server.rb
#

require 'socket'

def server s

  quiz = [
  ["1+1は？","2"],["東京スカイツリーの高さは？","634m"],["「Ruby」の開発者は？（ひらがなで）","まつもとゆきひろ"]
  ]


  quiz.each do |q|
    
    s.puts q[0]
    answer = s.gets.chomp
    if answer == q[1]
      s.puts "正解!!"
    else
      s.puts "不正解...!"
    end
  end
  
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