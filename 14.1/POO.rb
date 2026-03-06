#Metodo split na instancia "inacio"
"inacio".split("")
#Metodo split na instancia "rafael"
"rafael".split("")
#Mesmo tipo, instancias diferentes usando o mesmo metodo == valores diferentes

nome = "inacio"
nome.size
nome.split("")
nome.class #string
nome.object_id #180
nome = "rodrigo"
nome.object_id #200
nome = "rodrigo"
nome.object_id #300
#O ruby entende que eu criei diferentes instancias de mesmo valor, logo seus objects_id são diferentes

#criando minha classe
class Pizza
  
end
#Inicializando minha classe 
Pizza.new
pizza = Pizza.new
pizza.object_id #199
pizza2 = Pizza.new
pizza2.object_id #299
#Criando diferentes instancias de Pizza

#Metodo da classe
class Pizzas
  def self.tem_gluten?
    true
  end
end
pizza3 = Pizzas.new
pizza3.tem_gluten? #Ele vai dizer que não existe, porque não existe na instancia da classe
#Metodos de classe são aqueles metodos que possuem o self.
#Acesso a esses metodos
Pizzas.tem_gluten?#true

#Exemplo
class Pizza2
  def self.nomes
    "Pizza de #{sabor}"
  end

  def self.sabor
    "mussalera"
  end
end

Pizza2.nomes #Pizza de mussalera

#Metodos de instancia
class Pizza3
  def tem_gluten?
    true
  end
end
Pizza3.tem_gluten? #erro
Pizza.new.tem_gluten? #true

#Exemplo
class Pizza4
  def tem_gluten?
    true
  end

  def gluten_info
    if tem_gluten?
      "Tem glúten!"
    end
  end
end
pizza4 = Pizza4.new
pizza4.tem_gluten? #true
pizza4.gluten_info #Tem gluten!

#com os 2 metodos na mesma classe
class Pizza5
  def tipo_de_queijo
    "Mussarela"
  end

  def self.tempo_preparo
    5
  end
end
Pizza5.tempo_preparo #5
Pizza5.tipo_de_queijo #excessão

pizza5 = Pizza5.new
pizza5.tipo_de_queijo #Mussarela
pizza5.tempo_preparo #excessão
pizza5.class #Pizza

#Exemplo
class Carro
  def self.km_por_litros(km,litros)
    "#{km/litros} km/l"
  end
end

Carro.km_por_litros(125.0,8.0) #15.625 km/l

#Exemplo
class Carro2
  def self.consumo
    12
  end

  def self.calculo_abastecimento(km)
    "Você precisa abastecer #{km/consumo} litros"
  end
end

Carro2.calculo_abastecimento(245.0) #Você precisa abastecer 20.41666... litros

#Exemplo
class Carro3
  def calculo_abastecimento(km,litros)
    "#{km/litros} km/l"
  end
end

Carro3.new.km_por_litros(100,5)