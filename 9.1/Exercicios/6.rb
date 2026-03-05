temperatura_min_celsius = 10
temperatura_max_celsius = 40
(temperatura_min_celsius..temperatura_max_celsius).each do |temperaturas|
  if temperaturas >= 30
    puts "#{temperaturas}-Quente"
  elsif temperaturas >= 20 && temperaturas <= 29
    puts "#{temperaturas}-Agradavel"
  else
    puts "#{temperaturas}-Frio"
  end
end