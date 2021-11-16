# tabuleiro de 3 linhas com 3 celulas cada
# jogadores com entradas de simbolos diferentes
# apenas 2 jogadores por jogo
# cada jogador faz uma jogada por vez
# o jogador vencedor será o primeiro que:
#   colocar seu simbolo em sequencia de 3 
#   na horizontal ou 
#   vertical ou 
#   diagonal 
# 2 obejetos: tabuleiro e jogo
# verificar ganhador apos a quinta jogada
# verificar se deu velha antes da nona jogada
# no maximo 9 jogadas

TEMPLATE = <<-EOBOARD
%s | %s | %s
%s | %s | %s
%s | %s | %s
EOBOARD

SYMBOLS = %w[x o]
positions = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
puts TEMPLATE % positions

9.times do |round|  
  symbol = SYMBOLS[round%2]
  puts "Jogador #{symbol}: informa qual posição irá jogar"
  input = gets.chomp.to_i
  positions[input - 1] = symbol
  puts TEMPLATE % positions
end