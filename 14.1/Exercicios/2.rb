class CarroAzul
  def cor
    return "Azul"
  end
end

class CarroPreto
  def cor
    return "Preto"
  end
end

class CarroBranco
  def cor
    return "Branco"
  end
end

# Colocar a classe Carro aqui em cima!

  carro1 = CarroAzul.new
  carro2 = CarroPreto.new
  carro3 = CarroBranco.new

  [carro1, carro2, carro3].each do |carro|
    puts carro.cor
  end

  # Azul
  # Preto
  # Branco