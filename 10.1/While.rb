#gets
#Digito no terminal e guardo em exemplo
puts "Digite um numero: "
exemplo = gets
puts exemplo

#gets.chomp ele remove o enter
puts "digite um nome: "
exemplo = gets.chomp
puts exemplo

#gets.chomp.to_i 
#Converte para inteiro
#Se usasse o chomp padrão iria dar erro, porque o que ele pegou é uma string, e não um int
puts "Digite o preço e pressione enter"
preco = gets.chomp.to_i
taxa = 2
puts "Você vai pagar #{preco+taxa}"

#while
#while EXPRESSAO_VERDADEIRA do
# faça alguma coisa
#end
exemplo = true
while exemplo do
  puts "isso vai rodar para sempre, porque vai ser sempre verdadeiro"
end

#Exemplo
minha_variavel = true
while minha_variavel do
  puts "Entrei no while e vou definir minha_variavel para false e sair"
  minha_variavel = false
end
puts "Já saí do while"

#exemplo
exemplo = 0
while exemplo < 10 do
  puts exemplo
  exemplo += 1
end
puts exemplo

#Exemplo
exemplo = 1
executar = true

while executar do
  puts exemplo
  exemplo += 1

  if exemplo == 10
    executar = false
  end
end
puts exemplo