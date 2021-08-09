lados = []
puts 'Qual o lado A do triâgulo?'
lados << gets.chomp.to_i
puts 'Qual o lado B do triâgulo?'
lados << gets.chomp.to_i
a = Math.sqrt ((lados[0].to_i) **2 + (lados[1].to_i) **2)
puts 'A hipotenusa é: '+a.to_s