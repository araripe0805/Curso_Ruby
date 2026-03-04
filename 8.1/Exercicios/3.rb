exemplo = {a: 1, b: 2, c: 3, d: 7, e: 9}
soma = 0
exemplo.each do |chave,numero|
  if chave == :b || chave == :d
    next
  end  
  soma += numero
end
puts soma