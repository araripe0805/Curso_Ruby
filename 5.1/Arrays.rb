puts [] #retorna um array vazio
puts [1,2,3] #retorna um array de inteiros
puts ["a","b","c"] #retorna um array de strings
puts [1,"a","2",2,2,2]
# ele imprimi linha por linha

#Imprime a lista na mesma linha atraves da interpolação
nomes = ["inacio","joao","roberto"]
puts "a #{nomes}"

#Indice 
nomes2 = ["inacio","joao", "robertp"]
          #0/-3       #1/-2      #2/-1

#Acessa o elemento de indice 1 no array nomes2
puts nomes2[1] #joao
#Indices negativos são outra forma de acessar os elementos numa ordem de tras pra frente
puts nomes2[-2] #joao

#Array dentro de outro
exemplo = [1,2,[4,5],6]
          #0 1  2    3

puts exemplo[0] #1
puts exemplo[1] #2
puts exemplo[2] #4
                #5
puts exemplo[2][1] #5

#Função de split
nomes3 = "Rafael Roberto Lucas"
lista_de_nomes = nomes3.split(" ") #["Rafael", "Roberto", "Lucas"]
puts lista_de_nomes[2] #Lucas