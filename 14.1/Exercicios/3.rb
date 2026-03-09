class Imc
  def self.calcular(peso,altura,nome)
    imc = peso / (altura ** 2)
    if imc > 30
      puts "#{nome}-Obeso"
    elsif imc > 25
      puts "#{nome}-Acima do peso"
    elsif 18.5 <= imc && imc <= 24.99
      puts "#{nome}-Normal"
    else
      puts "#{nome}-Abaixo do peso"
    end
  end
end

Imc.calcular(200.2, 1.75, "Mario")
Imc.calcular(65.6, 1.65, "Roberta")
Imc.calcular(79.7, 1.77, "Pedro")
Imc.calcular(35.3, 1.60, "Ana")