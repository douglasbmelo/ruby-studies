def get_prisma_data(i)
    prisma = []
    puts "Whats the side a of the prisma? #{i}"
    prisma << gets.chomp.to_i
    puts "Whats the side b of the prisma? #{i}"
    prisma << gets.chomp.to_i
    puts "Whats the height c of prisma? #{i}"  
    prisma << gets.chomp.to_i
  end
  
  def prisma_diagonal_base(prisma)
    Integer.sqrt((prisma[0]**2) + (prisma[1]**2))
    
  end

  def diagonal_do_prisma(prisma)
    Integer.sqrt((prisma_diagonal_base(prisma))**2 + (prisma[2])**2)
  end
    
  def do_prisma(i)
    prisma = get_prisma_data(i)
  
    puts "Diagonal da base é: #{prisma_diagonal_base(prisma)}"
    puts "Diagonal do prisma é: #{diagonal_do_prisma(prisma)}"
  end
  
  ########
  
  puts "How many prismas?"
  quantity = gets.chomp.to_i
  
  quantity.times {|i| do_prisma(i)}