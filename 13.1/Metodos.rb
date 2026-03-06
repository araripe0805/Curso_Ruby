#Puts é um metodo do Ruby
#next e break tambem são
#Voce representa um metodo colocando o argumento no parenteses
puts "Hello"

#Criando meu metodo
def meu_metodo
  return 3
end
meu_metodo #retorna 3

#Guardando metodo dentro de uma variavel
valor = meu_metodo
puts valor #3

#exemplo
#Assim que ele encontra o return, ele já sai do metodo retornando o valor no return
def dentro_de_um_each
  [1,2,3,4,5,6].each do |numero|
    puts numero
    return numero if numero == 3
  end
end

#Exemplo com parametro
def meu_nome(parametro)
  return parametro
end
#duas opções de printar
nome = meu_nome("inacio")
puts meu_metodo("inacio")

#Exemplo
def bom_dia(nome, idioma)
  if idioma == "Portugues"
    puts "Bom dia #{nome}"
  elsif idioma == "Alemao"
    puts "Guten Morgen #{nome}"
  else
    puts "Idioma não suportado"
  end
end
bom_dia("inacio","Portugues")

#Metodo chama outro
def valor_imposto(valor)
  valor * 1.20
end
def calcular_valor_final(valor)
  if valor < 20
    return valor
  else
    return valor_imposto(valor)
  end
end
puts calcular_valor_final(50)

#Exemplo
#Quando o retorno do metodo é um booleano, usa-se esse "?"
def cor_proibida?(cor)
  if cor == "preto" or cor == "vermelho"
    return true
  else
    return false
  end
end
def puts_cor(cor)
  if cor_proibida?(cor)
    puts "---"
  else
    puts_cor
  end
end
puts_cor("branco") #branco
puts_cor("preto") #---

#Recursividade
def fatorial(numero)
  return 1 if numero == 1
  numero * fatorial(numero-1)
end
puts fatorial(4)