class Velha
  TEMPLATE = <<~BOARD
  %s | %s | %s
  %s | %s | %s
  %s | %s | %s
  BOARD

  SYMBOLS = %w[x o]

 # def initialize
  #  puts 'oi'
  #end
  
  def comecar
    positions = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    puts TEMPLATE % positions
  
    9.times do |round|  
      symbol = SYMBOLS[round%2]
      puts "Jogador #{symbol}: informa qual posição irá jogar"
      input = gets.chomp.to_i
      positions[input - 1] = symbol
      puts TEMPLATE % positions
      winner = row_winner(positions) || column_winner(positions) || diagonal_winner(positions)
      if winner != nil 
        puts "O jogador #{winner} ganhou!"
        return   
      end  
    end
    puts "Velha"
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

  def column_winner(positions)
    primeira_coluna = positions.values_at(0, 3, 6)
    segunda_coluna = positions.values_at(1, 4, 7)
    terceira_coluna = positions.values_at(2, 5, 8)

    if primeira_coluna.all?('x') || segunda_coluna.all?('x') || terceira_coluna.all?('x')
      "x"
    elsif primeira_coluna.all?('o') || segunda_coluna.all?('o') || terceira_coluna.all?('o')
      "o"
    end 
  end

  def diagonal_winner(positions)
    primeira_diagonal = positions.values_at(0, 4, 8)
    segunda_diagonal = positions.values_at(2, 4, 6)
    
    if primeira_diagonal.all?('x') || segunda_diagonal.all?('x')
      "x"
    elsif primeira_diagonal.all?('o') || segunda_diagonal.all?('o')
      "o"
    end
  end
end


#iniciar arquivo no irb usar '' string
#comecar o jogo no irb @jogo.comecar
