lados = []
puts 'Qual é base do triâgulo?'
lados << gets.chomp.to_i
puts 'Qual é a altura do triâgulo?'
lados << gets.chomp.to_i
a = (lados[0] * lados[1]) / 2
puts 'A área é: ' +a.to_s