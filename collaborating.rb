# musician and instruments Collaborating Objects
# band --< Musician >-- Instrument 

class Band
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end #end of class

class Musician
  attr_reader :name, :instrument

  def initialize(name, instrument)
    @name = name
    @instrument = instrument
  end

end #end of class

class Instrument
  attr_accessor :type, :serial_number, :musician

  def initialize(type, serial_number, musician)
    @type = type
    @serial_number = serial_number
    @musician = musician
  end

end #end of class

clari = Instrument.new("Clarinet", "AFDAFS")
trumpt = Instrument.new("Trumpe", "QERQWEUY")
piano = Instrument.new("Piano", "34129347")
guitar = Instrument.new("Guitar", "089093845")

beth = Musician.new("Beth", clari)
gemma = Musician.new("Gemma", trumpt)
aki = Musician.new("Aki", piano)
