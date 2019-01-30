class Owner
  # code goes here
  attr_accessor :pets, :name

  @@all = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = species
  end

  def self.all
    @@all
  end

  def species
    @species
  end

  def say_species
    puts "I am a #{@species}."
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
  end

end
