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

#Exemplo
class Pizza
  attr_reader sabor,preco

  def initialize(sabor,preco)
    @sabor = sabor
    @preco = preco
  end
end

class Mussarela < Pizza
  
  #Override
  def initialize(preco)
    #Compartilhamento de variaveis de instancias da superclasse para as filhas
    @sabor = "mussarela"
    @preco = preco
  end
end

pizza = Mussarela.new(35)
pizza.sabor #mussarela
pizza.preco #35

pizza_generica = Pizza.new("mussarela com azeitona", 38)
pizza_generica.sabor #mussarela com azeitona

#Super
class Pizza2
  attr_reader :sabor, :preco

  def initialize(sabor, preco)
    @sabor = sabor
    @preco = preco
  end
end

class Mussarela2 < Pizza2
  def initialize(preco)
    super("mussarela",preco)
  end
end

pizza_mussarela = Mussarela2.new(38)
pizza_mussarela.sabor #mussarela
pizza_mussarela.preco #38

#Exemplo
class Pizza_Basica
  def self.preco
    35
  end
end

Pizza_Basica.preco #35

class PizzaCalabresa < Pizza_Basica
  def self.preco
    super + 5
  end
end