require_relative "3 quest/circulo.rb"

class Pizza
  attr_reader :diametro

  def initialize(diametro)
    @diametro = diametro
  end

  def area
    Circulo.area_circulo(@diametro/2)
  end
end

pizza = Pizza.new(20)
puts pizza.area