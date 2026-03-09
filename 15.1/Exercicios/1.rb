class Pessoa
  attr_accessor :idade
  attr_writer :nome
  attr_writer :sobrenome

  def nome_completo
    puts "#{@nome} #{@sobrenome}"
  end
end

roberto = Pessoa.new

roberto.idade = 50
roberto.idade # 50

roberto.nome = "Roberto"
roberto.sobrenome = "da Silva"

#roberto.nome #NoMethodError (undefined method `nome'
#roberto.sobrenome #NoMethodError (undefined method `sobrenome'

roberto.nome_completo # "Roberto da Silva"