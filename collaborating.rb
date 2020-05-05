# musician and instruments Collaborating Objects
# band --< Musician -- Instrument
# band has many musicians,
# musician belong to a band
# band has many instruments through musician,
# instrument belongs to a band through musician
# musican has a instrument
# instrument belong to a musician


class Band
  attr_accessor :name, :musicians
  @@all = []

  def initialize(name)
    @name = name
    @musicians = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  #band has many instruments through musicians
  def instruments
    musicians.each do |m|
      m.instrument.type
    end
  end

end #end of class

class Musician
  attr_reader :name, :instrument, :band
  # attr_accessor :band

  def band=(band)
    @band = band
    band.musicians << self
  end

  def initialize(name, instrument)
    @name = name
    @instrument = instrument
    instrument.musician = self
  end

end #end of class

class Instrument
  attr_accessor :type, :serial_number, :musician
  @@all = []

  def initialize(type, serial_number)
    @type = type
    @serial_number = serial_number
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def band
    musician.band.name
  end

end #end of class

pirates = Band.new("The Priates")
tea = Band.new("The Tea Leaves")
dodgers = Band.new("The Wonky Dodgers")
stars = Band.new("Star Blazers")

clari = Instrument.new("Clarinet", "AFDAFS")
trumpt = Instrument.new("Trumpe", "QERQWEUY")
piano = Instrument.new("Piano", "34129347")
guitar = Instrument.new("Guitar", "089093845")

beth = Musician.new("Beth", clari)
gemma = Musician.new("Gemma", trumpt)
aki = Musician.new("Aki", piano)
henry = Musician.new("Henry", guitar)

gemma.band = tea
beth.band = tea
aki.band = stars
henry.band = pirates
