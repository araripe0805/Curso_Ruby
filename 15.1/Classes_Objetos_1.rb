#Variavel de instancia = @
#Uma variável de instância é um atributo que pertence a um objeto específico.
#Cada objeto da classe tem sua própria cópia dessa variável.
class Contador
  def criar_contador
    @contador = 1
  end

  def valor
    @contador
  end
end

c = Contador.new
c.valor #nil
c.criar_contador #1
c.valor #1

#Exemplo
class Contador2
  def contar
    if @contador
      @contador += 1
    else
      @contador = 0
    end
    @contador
  end
end
r = Contador2.new
r.contar #0
r.contar #1

#Metodos get/set
class Carro
  def definir_cor(cor)
    @cor = cor
  end

  def cor
    @cor
  end
end

carro1 = Carro.new
carro1.cor #nil
carro2 = Carro.new
carro2.cor #nil
carro1.definir_cor("preto") #Estou definindo que a cor do carro 1 vai ser preto
carro2.definir_cor("vermelho") #Estou definindo que a cor do carro 2 vai ser vermelho
carro1.cor #preto - get
carro2.cor #vermelho - get

#Exemplo
class Carro2
  def cor= cor
    @cor = cor
  end

  def cor 
    @cor
  end
end

meu_carro = Carro2.new
meu_carro.cor= "Preto"
meu_carro.cor #Preto

carro_joao = Carro2.new
carro_joao.cor= "Azul"
carro_joao.cor #Azul

#Construtor
class Carro3
  def initialize(cor, modelo)
    @cor = cor
    @modelo = modelo
  end

  def cor
    @cor
  end

  def modelo
    @modelo
  end

  def especificacao
    "#{@modelo} #{@cor}"
  end
end
carro3 = Carro3.new("preto","celta")

#Exemplo
class Carne
  def initialize(nome, pontos)
    @nome = nome
    @pontos = pontos
  end

  def lista_de_opcoes
    lista = []
    @pontos.each do |pontos|
      lista << "#{@nome} #{pontos}"
    end
    lista
  end
end

picanha = Carne.new("picanha",["ao ponto","bem passado"])
picanha.lista_de_opcoes #picanha ao ponto
                        #picanha bem passado

#attribute accessor,reader, writer
class Pizza
  attr_reader :sabor
  attr_writer :sabor
  #Pode usar o attr_accessor :sabor
  #Ele serve como ambos

  def initialize(sabor)
    @sabor = sabor
  end
end

pizza = Pizza.new("mussalera")
pizza.sabor #mussalera
pizza.sabor = "calabresa"
pizza.sabor #calabresa

#Exemplo
class Autor
  attr_reader :nome

  def initialize(nome)
    @nome= nome
  end
end

class Livro
  attr_reader :nome
  attr_reader :autor

  def initialize(nome, autor)
    @nome = nome
    @autor = autor
  end
end

inacio = Autor.new("inacio")
livro_piadas = Livro.new("HAHAHA", inacio)
livro_piadas.nome #HAHAHA
livro_piadas.autor #excessao
livro_piadas.autor.nome #inacio

class Autor2
  attr_reader :nome
  attr_accessor :livros

  def initialize(nome)
    @nome = nome
    @livros = []
  end
end

class Livro2
  attr_reader :nome
  attr_reader :autor

  def initialize(nome, autor)
    @nome = nome
    @autor = autor
  end
end

inacio2 = Autor2.new("inacio")
livro_aventura = Livro2.new("Livro de aventuras", inacio2)
inacio2.livros << livro_aventura
livro_aventura.nome #Livro de aventuras 
livro_aventura.autor #objeto autor(inacio2)
livro_aventura.autor.nome #inacio
livro_aventura.autor.livros[0].autor.nome #inacio