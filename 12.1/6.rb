100.times do |x|
  if (x+1) % 5 == 0 && (x+1) % 2 == 0
    puts "pingpong"
    next
  elsif (x+1) % 2 == 0
    puts "ping"
  elsif (x+1) % 5 == 0
    puts "pong"
  else
    puts x+1
  end
end