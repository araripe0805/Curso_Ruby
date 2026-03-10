class Veiculo
  attr_reader :peso, :rodas
  def initialize(peso, rodas)
    @peso = peso
    @rodas = rodas
  end
end

class Caminhao < Veiculo
  def initialize
    super(12000,8)
  end

  def carga
    "arroz"
  end
end

class Moto < Veiculo
  def initialize
    super(250,2)
  end

  def cilindradas
    "200cc"
  end
end

class Carro < Veiculo
  def initialize
    super(1100,4)
  end

  def lugares
    5
  end
end

veiculo = Veiculo.new(100000, 12)
puts veiculo.rodas # 12
puts veiculo.peso # 100000kg
#veiculo.carga # NoMethodError, pois não deve estar disponível Veiculo
#veiculo.cilindradas # NoMethodError, pois não deve estar disponível Veiculo
#veiculo.lugares # NoMethodError, pois não deve estar disponível Veiculo

caminhao = Caminhao.new
puts caminhao.rodas # 8
puts caminhao.peso # 12000kg
puts caminhao.carga # arroz
#caminhao.cilindradas # NoMethodError, pois não deve estar disponível para Caminhao
#caminhao.lugares # NoMethodError, pois não deve estar disponível para Caminhao

moto = Moto.new
puts moto.rodas # 2
puts moto.peso # 250kg
puts moto.cilindradas # 200cc
#moto.carga # NoMethodError, pois não deve estar disponível para Moto
#moto.lugares # NoMethodError, pois não deve estar disponível para Moto

carro = Carro.new
puts carro.rodas # 4
puts carro.peso # 1100kg
puts carro.lugares # 5
#carro.carga # NoMethodError, pois não deve estar disponível para Carro
#carro.cilindradas # NoMethodError, pois não deve estar disponível para Carro