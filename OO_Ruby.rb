class Person
  attr_accessor :height, :gender
  attr_writer :ccn  #credit card number, do not want to get them , #setter
  attr_reader :name, :yob

  @@all = []

  def initialize(name, yob)
    @name = name
    @yob = yob
    @@all << self #add instance to class variable
    puts @@all.length
  end

  #setter
  # def name=(name)
  #   @name = name
  # end

  #getter
  # def name
  #   @name
  # end

  def self.all
    @@all
  end

  def say_name
      # put self
    "My name is #{@name}"
  end

  #explicitly get the ccn number
  def give_me_ccn
    @ccn
  end

end #end of class

dude2 = Person.new('Dude2',1990)
dude = Person.new('Dude',1990)
dude.height = 6
# dude.name = "Dude"

# puts dude.name
# puts dude.say_name
# puts dude.yob
# puts dude.height
# puts Person.all
