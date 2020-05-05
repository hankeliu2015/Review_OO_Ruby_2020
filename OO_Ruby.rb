class Person
  attr_accessor :height, :gender
  attr_writer :ccn  #credit card number, do not want to get them , #setter
  attr_reader :name, :yob

  def initialize(name, yob)
    @name = name
    @yob = yob
  end 

  #setter
  # def name=(name)
  #   @name = name
  # end

  #getter
  # def name
  #   @name
  # end

  def say_name
    "My name is #{@name}"
  end

  #explicitly get the ccn number
  def give_me_ccn
    @ccn
  end

end #end of class

dude = Person.new('Dude2',1990)
dude.height = 6
# dude.name = "Dude"

# puts dude.name
# puts dude.say_name
# puts dude.yob
# puts dude.height
