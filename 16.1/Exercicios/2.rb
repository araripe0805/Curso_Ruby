class Carro
  def lugares
    2
  end

  def combustivel
    "gasolina"
  end
end

class CorsaFlex < Carro
  def lugares
    super + 2
  end
  
  def combustivel
    "#{super} e alcool"
  end
end

carro = CorsaFlex.new
puts carro.lugares #4
puts carro.combustivel #gasolina e alcool