class Forca
  attr_reader :palavra_secreta
  attr_accessor :erro, :lista_forca

  def initialize
    @palavra_secreta = "segredo"
    @erro = 0
    @lista_forca = ["_","_","_","_","_","_","_"]
  end

  def jogo
    lista_palavra_secreta = @palavra_secreta.split("")

    while @erro < 6
      print "Digite uma letra: "
      letra_escolhida = gets.chomp

      if conferir_letra(letra_escolhida,lista_palavra_secreta)
        imprimir_forca(letra_escolhida,lista_palavra_secreta)
        acertou = verificar_acertou
        if acertou == true
          break
        end
      end
    end
    puts "GAME OVER!!!"
  end

  def conferir_letra(letra,lista)
    if lista.include?(letra)
      puts "Você acertou a letra"
      return true
    else
      puts "Você errou a letra!"
      @erro += 1
      puts "Você errou #{@erro} de 6"
      return false
    end
  end

  def imprimir_forca(letra,lista)
    lista.length.times do |x|
      if letra == lista[x]
        @lista_forca[x] = letra
      end
    end
    puts "#{@lista_forca}"
  end

  def verificar_acertou
    if @palavra_secreta == @lista_forca.join("")
      puts "Você venceu, meus parabéns!!!"
      return true
    end
    return false
  end
end

forca = Forca.new
forca.jogo