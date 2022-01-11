puts 'Qual seu primeiro nome?'
nome1 = gets.chomp
puts 'Qual seu segundo?'
nome2 = gets.chomp
puts 'Qual é seu ultimo nome?'
nome3 = gets.chomp
total = nome1.length.to_i + nome2.length.to_i + nome3.length.to_i 
puts 'Seu nome possue: ' +total.to_s 
