#Para cada elemento da lista, ele vai guardar em uma variavel local(nome), que vai imprimir o nome usando essa variavel
["inacio","joao"].each do |nome|
  puts nome
end

#Exemplo
exemplo = [1,2,3]
exemplo.each do |numero|
  puts numero * 10
end

#Com hash
{a: 1, b: 2, c: 3}.each do |chave,valor|
    puts "a chave #{chave} e tem o valor #{valor}" 
end

#exemplo
exemplo = {valor: 10, taxa: 20}
exemplo.each do |chave,valor|
  puts "a chave #{chave} e tem o valor #{valor}"
end

#Array de hashs
exemplo = [{nome: "Rafael"}, {nome: "Inacio"}]
exemplo.each do |pessoal|
  puts "Oi #{pessoal[:nome]}"
end

#Exemplo
exemplo = {compras: [10,20,30]}
total = 0
exemplo[:compras].each do |compra|
  total += compra
end
puts total

#break
exemplo = [1,2,3,4,5,6]
exemplo.each do |numero|
  puts numero
  if numero > 3
    puts "Break"
    break
  end
end

#Next
exemplo = ["Rafael", "Inacio", "Rafael", "Rafael", "Ronaldo"]
exemplo.each do |nome|
  if nome == "Rafael"
    next
  else
    puts nome
  end
end