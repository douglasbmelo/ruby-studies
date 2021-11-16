class People
  attr_writer :date_of_birth # teclado
  attr_reader :age  # impressora
  attr_accessor :surname #:name, :surname # tela com touchscreen

  def initialize(age)
    @age = age      
  end
  
  # writer
  # setter
  def name=(value)
    @name = value
  end

  # reader
  # getter
  def name
    @name
  end

  def fullname
    "#{name} #{surname}"
  end
end