class Velha
  TEMPLATE = <<~BOARD
  %s | %s | %s
  %s | %s | %s
  %s | %s | %s
  BOARD

  SYMBOLS = %w[x o]

  def comecar
    positions = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    puts TEMPLATE % positions
  
    9.times do |round|  
      symbol = SYMBOLS[round%2]
      puts "Jogador #{symbol}: informa qual posição irá jogar"
      input = gets.chomp.to_i
      positions[input - 1] = symbol
      puts TEMPLATE % positions
      winner = row_winner(positions)
      if winner != nil
        puts "O jogador #{winner} ganhou!"
        break
      end  
    end
  end

  private

  # verificando se todos os elementos das linhas 
  # são x OU são o
  def row_winner(positions)
    primeira_linha = positions[0, 3]
    segunda_linha = positions[3, 3]
    terceira_linha = positions[6, 3]

    if primeira_linha.all?('x') || segunda_linha.all?('x') || terceira_linha.all?('x')
      "x"
    elsif primeira_linha.all?('o') || segunda_linha.all?('o') || terceira_linha.all?('o')
      "o"
    end    
  end
end

@jogo = Velha.new

#iniciar arquivo no irb usar '' string
#comecar o jogo no irb @jogo.comecar
