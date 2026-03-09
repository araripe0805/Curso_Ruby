#Herança
class Carro
  def rodas
    4
  end

  def portas
    5
  end
end

class Corsa < Carro
  def cor
    "vermelho"
  end
end

meu_carro = Corsa.new
meu_carro.rodas #4
meu_carro.portas #5

c = Carro.new
c.rodas #4
c.portas #5
c.cor #Error
#Metodo cor só existe na classe corsa

#Exemplo
class Carro2
  def rodas
    4
  end
end

class Corsa2 < Carro2
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

meu_carro = Corsa2.new("Corsinha")
meu_carro.rodas #4
meu_carro.nome #Corsinha

#Override
class Carro3
  def rodas
    4
  end
end

class Corsa3 < Carro3
  def rodas
    5
  end
end

c = Corsa3.new
c.rodas #5

#Exemplo
class Animal
  def self.som
    "Grrrr"
  end
end

Animal.som #Grrrr

class Cachorro < Animal
  def self.som
    "Au Au"
  end
end

Cachorro.som #Au Au