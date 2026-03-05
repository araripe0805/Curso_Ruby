puts "Digite um número: "
numero1 = gets.chomp.to_i
puts "Digite outro número: "
numero2 = gets.chomp.to_i
puts "Digite um operador: "
operador = gets.chomp
if operador == "+"
  puts "Soma: #{numero1 + numero2}"
else
  puts "Subtração: #{numero1 - numero2}"
end