numero_secreto = 4
while true do
  puts "Digite um número: "
  numero_tentado = gets.chomp.to_i
  if numero_tentado == numero_secreto
    puts "Você acertou o número #{numero_secreto}"
    break
  elsif numero_secreto > numero_tentado
    puts "ERRO! O número secreto é maior que #{numero_tentado}"
  else 
    puts "ERRO! O número secreto é menor que #{numero_tentado}"
  end
end