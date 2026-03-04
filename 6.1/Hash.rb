#Hash é uma coleção com chave e valor
exemplo = {}#hash vazio
exemplo2 = {nome: "Rafael", idade: 30} #chaves: nome e idade. Respectivos valores: "Rafael", 30
#Ao inves de acessar o indice como em Arrays, acessamos as chaves, para conseguir os valores
puts "Meu nome é #{exemplo2[:nome]} e tenho #{exemplo2[:idade]} anos"

#Outra alternativa de usar hash
exemplo3 = {:nome => "Inacio", :idade => 20} #Mesma resposta do exemplo anterior

#As chaves podem ser usadas como string e não como simbolos
exemplo4 = {"nome" => "joao", "idade" => 15}
puts "Meu nome é #{exemplo4["nome"]} e #{exemplo4["idade"]} anos"

#Adicionando chaves
exemplo5 = {}
exemplo5["teste1"] = 1
exemplo5[:teste2] = 2
puts "#{exemplo5}" #{"teste1"=>1, :teste2=>2}
puts exemplo5["teste1"] #1
puts exemplo5[:teste1] #não existe na lista exemplo5, porque não existe essa chave

#Adicionando lista a uma hash
exemplo6 = {}
exemplo6[:lista] = []
exemplo6[:lista] << "Morango"
exemplo6[:lista] << "Banana"
puts "#{exemplo6}" # {:lista =>["Morango","Banana"]} 
exemplo6[:nome] = "Compras"
puts "#{exemplo6}" # {:lista => ["Morango","Banana"], :nome => "Compras"}
puts exemplo6[:lista][1] #Banana

#Lista formada de hashs
exemplo7 = [{nome: "Inacio", idade: 20}, {nome: "joao", idade: 19}]
puts exemplo7[0][:nome] #"Inacio"
puts exemplo7[0][:idade] #20
puts exemplo7[1][:nome] #joao
puts exemplo7[1][:idade] #19