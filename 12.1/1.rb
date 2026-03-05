maior = 0
10.times {
  puts "Digite um numero: "
  numero = gets.chomp.to_i
  if numero > maior
    maior = numero
  end
}
puts "O maior numero digitado foi: #{maior}"