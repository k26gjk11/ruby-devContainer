# reader2.rb

File.open "reader.rb", "r" do |f|
  while line = f.gets()
    puts line
  end
end