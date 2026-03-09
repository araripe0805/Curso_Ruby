class Pessoa
  attr_reader :nome, :telefone

  def initialize(nome, telefone)
    @nome = nome
    @telefone = telefone
  end
end

class Agenda
  attr_accessor :telefones

  def initialize
    @telefones = []
  end

  def adicionar(pessoa)
    @telefones << pessoa
  end

  def buscar(nome)
    telefones.each do |contato|
      puts contato.telefone if contato.nome == nome
    end
    puts ""
  end
end

minha_agenda = Agenda.new
minha_agenda.adicionar(Pessoa.new("Rafael", 92345567))
minha_agenda.adicionar(Pessoa.new("Rodrigo", 99229822))
minha_agenda.adicionar(Pessoa.new("Sofia", 97213399))

minha_agenda.buscar("Rodrigo") # 99229822
minha_agenda.buscar("Alan") # ""