abc = []
puts 'Qual é o lado a do prisma?'
abc << gets.chomp.to_i
puts 'Qual é o lado b do prisma?'
abc << gets.chomp.to_i
puts 'Qual é a altura c do prisma?'
abc << gets.chomp.to_i
DiagonalBase = Integer.sqrt((abc[0])**2 + (abc[1])**2)
puts "A Diagonal da Base é: #{DiagonalBase}"
DiagonalPrisma = Integer.sqrt((DiagonalBase)**2 + (abc[2])**2)
puts "A Diagonal do Prisma é: #{DiagonalPrisma}"
AreaPrisma = 6 * (abc[0] * abc[2])
puts "A Área do Prisma é: #{AreaPrisma}"