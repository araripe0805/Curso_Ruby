class Carro
  attr_reader :km_rodados

  def initialize(modelo, cor, km_rodados)
    @modelo = modelo
    @cor = cor
    @km_rodados = km_rodados
  end

  def detalhes
    "#{@modelo} #{@cor}"
  end

  def precisa_trocar_oleo?
    if @km_rodados > 10000
      return true
    else
      return false
    end
  end

  def precisa_trocar_pneu?
    if @km_rodados > 50000
      return true
    else
      return false
    end
  end
end

class Oficina
  attr_accessor :lista

  def initialize
    @lista = []
  end

  def listar_todos_carros
    resultado = []
    @lista.each do |carro|
      resultado << carro.detalhes
    end
    return "#{resultado}"
  end

  def listar_carros_troca_oleo
    resultado = []
    @lista.each do |carro|
      if carro.precisa_trocar_oleo? == true
        resultado << carro.detalhes
      end
    end
    return "#{resultado}"
  end

  def listar_carros_troca_pneu
    resultado = []
    @lista.each do |carro|
      if carro.precisa_trocar_pneu? == true
        resultado << carro.detalhes
      end
    end
    return "#{resultado}"
  end

  def adicionar_carro(carro)
    @lista << carro
  end
end

oficina = Oficina.new
oficina.adicionar_carro(Carro.new("corsa", "preto", 32000))
oficina.adicionar_carro(Carro.new("fusca", "azul", 9000))
oficina.adicionar_carro(Carro.new("palio", "branco", 51000))

puts oficina.listar_todos_carros #["corsa preto", "fusca azul", "palio branco"]
puts oficina.listar_carros_troca_oleo #["corsa preto", "palio branco"]
puts oficina.listar_carros_troca_pneu #["palio branco"]