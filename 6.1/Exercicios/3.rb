exemplo = {
  a: "cinquenta",
  b: "dez",
  c: [0,1,2,3,4,5,6,7,8,9]
}

puts "#{exemplo[:a]} - #{(exemplo[:c][9]*exemplo[:c][6])-exemplo[:c][4]}"
puts "#{exemplo[:b]} - #{exemplo[:c][5]*exemplo[:c][2]}"