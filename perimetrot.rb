lados = []
puts 'Qual é o lado a do triâgulo?'
lados << gets.chomp.to_i
puts 'Qual é o lado b do triâgulo?'
lados << gets.chomp.to_i
puts 'Qual é o lado c do triâgulo?'
lados << gets.chomp.to_i
a = lados[0] + lados[1] + lados[2]
puts 'O perimetro é: ' +a.to_s