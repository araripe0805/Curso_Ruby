agenda = [{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"}, {nome: "Romário", telefone: "2299"}, {nome: "Ana", telefone: "1634"}, {nome: "Rodrigo", telefone: "9533"}]

def procurar_numero(agenda, nome)
  agenda.each do |pessoa|
    if pessoa[:nome] == nome
      return pessoa[:telefone]
    end
  end
end

puts procurar_numero(agenda, "Rodrigo")
puts procurar_numero(agenda, "Ana")