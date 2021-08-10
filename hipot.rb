catetos = []
puts 'Qual o lado A do triâgulo?'
catetos << gets.chomp.to_i
puts 'Qual o lado B do triâgulo?'
catetos << gets.chomp.to_i
hipotenusa = Math.sqrt((catetos[0])**2 + (catetos[1])**2)
puts "A hipotenusa é: #{hipotenusa}"
puts "A área é: #{(catetos[0] * catetos[1])/2}"
puts "O perimetro é: #{catetos[0] + catetos[1] + hipotenusa}"
