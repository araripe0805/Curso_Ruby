#Uma função do Ruby, que irá executar o que tiver dentro das chaves x vezes, sendo x o numero antes do times
10.times {puts "Oi"}

#Alternativa de uso do time
10.times do puts "Oi!" end

#Exemplo
contador = 5
contador.times do 
  puts "Contando..."
end

#Outro uso
#A cada iteração o x aumenta
10.times { |x|
  puts "Oi! #{x}"
}

#Outra forma de fazer
10.times do |x|
  puts "Hello! #{x}"
end

#Exemplo
4.times do |x|
  puts x
  if x % 2 == 0
    puts "É par"
  end
end

#Exemplo com break
10.times do |x|
  x += 1
  puts x
  if x % 5 == 0
    puts "Multiplo de 5!"
    break
  end
end

#Exemplo com next
4.times do |x|
  if x == 2
    next
  else
    puts x
  end
end

#Alternativa
4.times do |x|
  next if n == 2
  puts n
end

#range
#Monta um array em que o primeiro elemento é o primeiro numero, e o ultimo é o ultimo elemento
inicio = 5
fim = 8
(inicio..fim).to_a#[5,6,7,8]

#Usando com each
(1..5).each do |x|
  puts "Oi"
end