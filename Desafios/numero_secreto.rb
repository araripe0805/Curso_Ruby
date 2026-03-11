class Numero_Secreto
  attr_reader :numero_secreto
  attr_accessor :tentativas

  def initialize
    @numero_secreto = 4
    @tentativas = 0
  end

  def jogo
    while @tentativas < 10 
      print "Digite um número: "
      numero_escolhido = gets.chomp.to_i

      if conferir_numero(numero_escolhido)
        break
      else
        puts "Você errou (#{@tentativas} de 10)"
        if @tentativas == 10
          puts "GAME OVER!!!"
        end
      end
    end
  end

  def conferir_numero(numero)
    if numero == @numero_secreto
      vencedor
      return true
    elsif numero > @numero_secreto
      puts "O número secreto é menor que #{numero}"
      @tentativas += 1
      return false
    elsif numero < @numero_secreto
      puts "O número secreto é maior que #{numero}"
      @tentativas += 1
      return false
    end
  end

  def vencedor
    puts "Parabéns!!! Você acertou o número secreto #{@numero_secreto} com #{@tentativas} de 10 tentativas"
  end
end

numero_secreto = Numero_Secreto.new
numero_secreto.jogo