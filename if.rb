def area_circulo(raio)     
    Math::PI * raio**2     
end

def area_triangulo(base, altura)
    (base * altura) / 2
end    

puts 'Qual o objeto deseja calcuçar a área?'
object = gets.chomp
if object == 'circulo'
    puts 'Qual é o tamanho do raio?'
    raio = gets.chomp.to_i
    puts area_circulo(raio)
elsif object == 'triangulo'
    puts 'Qual é a base do Triângulo?'
    base = gets.chomp.to_i
    puts 'Qual é a altura do Triângulo?'
    altura = gets.chomp.to_i
    puts area_triangulo(base, altura)    
else 
    puts 'Objeto não encontrado'
end  

