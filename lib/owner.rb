class Owner
  attr_accessor :pets, :name, :mood
  attr_reader :species
  ALL = []
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    ALL << self
    @species = species
  end

  def self.all
    ALL
  end

  def self.count
    ALL.count
  end

  def self.reset_all
    ALL.clear
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each {|species, pets| pets.each { |pet| pet.mood= "nervous"}}
    pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end


end
