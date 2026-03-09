class Pessoa
  attr_reader :nome
  attr_accessor :best_friend

  def initialize(nome)
    @nome = nome
  end
end

mario = Pessoa.new("Mario")
ronaldo = Pessoa.new("Ronaldo")
pedro = Pessoa.new("Pedro")
romario = Pessoa.new("Romario")

mario.best_friend = ronaldo
ronaldo.best_friend = pedro
pedro.best_friend = romario
romario.best_friend = mario

puts mario.best_friend.nome # Ronaldo
puts mario.best_friend.best_friend.nome # Pedro
puts mario.best_friend.best_friend.best_friend.nome # Romario
puts mario.best_friend.best_friend.best_friend.best_friend.nome #Mario
puts mario.best_friend.best_friend.best_friend.best_friend.best_friend.nome #Ronaldo