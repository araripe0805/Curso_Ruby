#Condicional
if true then
  puts "é verdadeiro" #é verdadeiro
end

# Outra alternativa
if true
    puts "é verdadeiro" #é verdadeiro
end

if false then
  puts "é verdadeiro" #não será executado
end

# Outra alternativa
if true
    puts "é verdadeiro" #é verdadeiro
end

#exemplo
exemplo = "Inacio"
if exemplo == "Inacio" then
    puts "Oi inacio" #Irá executar porque exemplo == "Inacio"
end

#Else
ligado = false
if ligado
  puts "Ligado"
else
  puts "Desligado"  
end

#unless
tomada = false
if tomada != true
  puts "não é true!"
end

#"A não ser que tomada seja verdadeiro:"
#normalmente um if ele acontece se a condição for true
#unless é a negação do if, acontece quando a condição for false
unless tomada == true
  puts "não é true"
end

#elsif
exemplo = "inacio"
#Se exemplo for igual a "joao", ele executa
if exemplo == "joao"
  puts "Oi joao"
#Se o exemplo não for igual a "joao", mas igual a "inacio", ele executa
elsif exemplo == "inacio"
  puts "Oi inacio"
#Se não for nenhuma das opções, ele executa
else
  puts "Oi desconhecido"
end

#exemplo
a = 20
b = 30
if a == 20 and b == 40
  puts "a é 20 e b é 40"
elsif a == 30 and b == 30
  puts "a é 30 e b é 30"
elsif a == 20 and b == 30
  puts "a é 20 e b é 30"
else
  puts "alguma coisa errada"
end

#exemplo
a = 1
b = 2
if a == 1 or b == 3
  puts "a é 1 ou b é 3"
end 

#Operador ternario
#expressao_verdadeira ? SIM : NAO
exemplo = "inacio"
idade = exemplo == "inacio" ? "20 anos" : "desconhecido"
puts idade