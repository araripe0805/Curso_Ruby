Mario = {peso: 200.2, altura: 1.75}
Roberta = {peso: 65.6, altura: 1.65}
Pedro = {peso: 79.7, altura: 1.77}
Ana = {peso: 35.3, altura: 1.60}

imc = Mario[:peso]/(Mario[:altura]**2)

if imc > 30
  puts "Obeso" 
elsif imc > 25 
  puts "Acima do peso"
elsif 18.5 >= imc && imc < 24.99
  puts "Peso ideal"
elsif imc < 18.5
  puts "Abaixo do peso"
end