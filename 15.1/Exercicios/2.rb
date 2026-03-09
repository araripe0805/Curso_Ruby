class Produto
  attr_reader :nome, :preco

  def initialize(nome,preco)
    @nome = nome
    @preco = preco
  end
end

class Carrinho
  attr_accessor :produtos

  def initialize
    @produtos = []
  end

  def total
    total = 0
    @produtos.each do |produto|
      total += produto.preco
    end
    puts total
  end
end

carrinho_compras = Carrinho.new
carrinho_compras.produtos << Produto.new("leite", 3)
carrinho_compras.produtos << Produto.new("nescau", 5)
carrinho_compras.produtos << Produto.new("pão", 6)
carrinho_compras.produtos << Produto.new("queijo", 8)

carrinho_compras.total # 22