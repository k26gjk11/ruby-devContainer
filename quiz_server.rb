#! /usr/local/bin/ruby
#quiz_server.rb
#

require 'socket'

def server s

  quiz = [
  ["1+1は？","2"],["東京スカイツリーの高さは何m？数字のみで可","634"],["東京タワーの高さは何m？数字のみで可","333"]
  ]

  score = 0
  quiz.each do |q|
    
    s.puts q[0]
    answer = s.gets.chomp
    if answer == q[1]
      s.puts "正解!!"
      score += 1
    else
      s.puts "不正解...!"
    end
  end
  s.puts "あなたの正解数は#{score}問です!"
  s.close
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