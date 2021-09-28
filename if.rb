def area_circulo(raio, pi = 3.14)     
    pi * raio**2     
end

puts 'Qual o objeto deseja calcuçar a área?'
object = gets.chomp
if object == 'circulo'
    puts 'Qual é o tamanho do raio?'
    raio = gets.chomp.to_i
    puts area_circulo(raio)
elsif object == 'triangulo'
    puts 2
else 
    puts 'Objeto não encontrado'
end  

