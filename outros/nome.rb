larguraDaLinha = 60
str = '--> text <--'
puts str.ljust  larguraDaLinha
puts str.center larguraDaLinha
puts str.rjust  larguraDaLinha
puts str.ljust(larguraDaLinha/2) + str.rjust(larguraDaLinha/2)
