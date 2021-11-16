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
      row_winner(positions)
    end
  end

  private

  # verificando se todos os elementos das linhas 
  # são x OU são o
  def row_winner(positions)
    primeira_linha = positions[0, 3]
    segunda_linha = positions[4, 6]
    terceira_linha = positions[7, 9]

    if primeira_linha.all?('x') 
      puts "jogador x ganhou"
    elsif primeira_linha.all?('o')
      puts "jogador o ganhou"
    end  

    if segunda_linha.all?('x') 
      puts "jogador x ganhou"
    elsif segunda_linha.all?('o')
      puts "jogador o ganhou"
    end 

    if terceira_linha.all?('x') 
      puts "jogador x ganhou"
    elsif terceira_linha.all?('o')
      puts "jogador o ganhou"
    end    
  end
end

@jogo = Velha.new

