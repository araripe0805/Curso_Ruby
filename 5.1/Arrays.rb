puts [] #retorna um array vazio
puts [1,2,3] #retorna um array de inteiros
puts ["a","b","c"] #retorna um array de strings
puts [1,"a","2",2,2,2]
# ele imprimi linha por linha

#Imprime a lista na mesma linha atraves da interpolação
nomes = ["inacio","joao","roberto"]
puts "a #{nomes}" #a ["inacio","joao","roberto"]

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

#Adicionando elemento
a = [] #Array vazio
puts a[0]#nil
a[0] = 10
puts "#{a}"#10

#Atribuindo novo valor
a[1] = 20
a[2] = 30
puts "#{a}" #[10,20,30]
a[0] = 40
puts "#{a}" #40,20,30

#outra forma de adicionar
b = []
b << 10
b << 20
b << 30
#Sempre adiciona no final do Array
puts "#{b}"#[10, 20, 30]