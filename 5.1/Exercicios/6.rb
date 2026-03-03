texto = "banana#morango#abacaxi!limao!mamao"
resultado1 = texto.split("#")
resultado2 = resultado1[2].split("!")
resultado_final = [resultado1[0],resultado1[1],resultado2[0],resultado2[1],resultado2[2]]
puts "Resultado: #{resultado_final}"