class Agenda
  def self.dados
    lista = [{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"}, {nome: "Romário", telefone: "2299"}, {nome: "Ana", telefone: "1634"}, {nome: "Rodrigo", telefone: "9533"}]
  end

  def self.procurar_numero(nome)
    dados.each do |agenda|
      return agenda[:telefone] if agenda[:nome] == nome
    end
  end
end

# Colocar a classe Agenda aqui em cima!

puts Agenda.dados
puts Agenda.procurar_numero("Rodrigo")
puts Agenda.procurar_numero("Ana")