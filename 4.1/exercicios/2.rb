dolar = 5.00 #1 dolar = 5 reais
euro = 6.00 #1 euro = 6 euros

cadeira = 10.00 #1 cadeira vale 10 reais
mesa = 20.00 #1 mesa vale 20 reais

puts "A mesa custa U$ #{(mesa/dolar).round(2)}" #Se o resultado for somente 4.0, ele irá por só 4.0
puts "A mesa custa € #{(mesa/euro).round(2)}"#Nesse caso, ele arredonda direito para só duas casas decimais
puts format("A cadeira custa U$ %.2f", cadeira/dolar) #Se você quer sempre arredondado para mostrar sempre 2 casas, mesmo que seja só 00 
puts "A cadeira custa € %.2f" % (cadeira/euro) #Outra opção