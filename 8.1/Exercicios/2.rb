lista = "Rafael!Roberto!Rodolfo!Marcos!Rodrigo!Jorge!Lucas!Carlos!Dario!Ronaldo!Luis!Moises!Tulio!Armando!Beto!Mathias"
lista_nomes = lista.split("!")
lista_nomes.each do |nomes|
  puts "Oi, #{nomes}!"
end