nome = "Inacio"
idade = 20
idade.times do |x|
  if x + 1 == idade
    puts "#{nome} tem #{x+1} anos"
    break
  end
  puts "#{nome} já teve #{x+1} ano(s)"
end