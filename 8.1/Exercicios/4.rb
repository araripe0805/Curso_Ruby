agenda = [{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"}, {nome: "Romário", telefone: "2299"}]
procurar_por = "Rodolfo"
agenda.each do |pessoa|
  if pessoa[:nome] != procurar_por
    next
  end
  puts "#{pessoa[:nome]}: #{pessoa[:telefone]}"
  break
end
