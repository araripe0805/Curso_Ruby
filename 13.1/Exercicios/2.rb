def imc(peso, altura, nome)
  imc = peso / (altura ** 2)
  if imc > 30
    puts "Obeso"
  elsif imc > 25
    puts "Acima do peso"
  elsif 18.5 <= imc && imc <= 24.99
    puts "Normal"
  elsif imc < 18.5
    puts "Abaixo do peso" 
  else
    puts "Algo está errado"
  end
end

imc(200.2, 1.75, "Mario")
imc(65.6, 1.65, "Roberta")
imc(79.7, 1.77, "Pedro")
imc(35.3, 1.60, "Ana")