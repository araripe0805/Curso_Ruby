class Contato
  attr_reader :nome, :telefone

  def initialize(nome,telefone)
    @nome = nome
    @telefone = telefone
  end
end

class Agenda
  attr_accessor :lista_contatos

  def initialize
    @lista_contatos = []
  end

  def adicionar_contato
    print "Digite o nome: "
    nome = gets.chomp

    print "Digite o telefone: "
    telefone = gets.chomp.to_i

    @lista_contatos << Contato.new(nome, telefone)

    puts "Contato adicionado"
  end

  def listar_contatos
    if @lista_contatos.empty?
      puts "Nenhum contato na agenda"
      return
    end

    @lista_contatos.each do |contato|
      puts "#{contato.nome}-#{contato.telefone}"
    end
  end

  def buscar_contato
    print "Digite o nome para buscar: "
    nome = gets.chomp

    @lista_contatos.each do |contato|
      if contato.nome.downcase == nome.downcase
        puts "Contato encontrado-#{contato.telefone}"
        return
      end
    end
    puts "Contato não encontrado"
  end

  def remover_contato
    print "Qual o nome da pessoa que deseja remover da agenda: "
    nome = gets.chomp

    @lista_contatos.each do |contato|
      if contato.nome.downcase == nome.downcase
        @lista_contatos.delete(contato)
        puts "Contato removido"
        return
      end
    end
    puts "Contato não encontrado"
  end
end

agenda = Agenda.new
while true
  puts
  puts "1 - Adicionar contato"
  puts "2 - Listar contatos"
  puts "3 - Buscar contato"
  puts "4 - Remover contato"
  puts "5 - Sair"

  print "Escolha uma opção: "
  opcao = gets.chomp.to_i

  case opcao
  when 1
    agenda.adicionar_contato
  when 2
    agenda.listar_contatos
  when 3
    agenda.buscar_contato
  when 4
    agenda.remover_contato
  when 5
    puts "Saindo"
    break
  else
    puts "opção invalida"
  end
end
