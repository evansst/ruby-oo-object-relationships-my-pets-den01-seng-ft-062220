require 'pry'

class Owner
  attr_accessor :cats, :dogs
  attr_reader :name, :species

  @@all = []

  def initialize name
    @name = name
    @species = 'human'
    @cats = []
    @dogs = []
    @@all << self

  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    p "I am a #{@species}."
  end

  def buy_cat name
    new_cat = Cat.new name, self
  end

  def buy_dog name
    new_dog = Dog.new name, self
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = 'happy'
    end
  end

  def feed_cats
    self.cats.each do |cat|
      cat.mood = 'happy'
    end
  end

  def sell_pets
    pets = self.cats + self.dogs
    pets.each do |pet|
      pet.mood = 'nervous'
      pet.owner = nil
    end
    @cats = []
    @dogs = []
  end

  def list_pets
    p "I have #{@dogs.size} dog(s), and #{@cats.size} cat(s)."
  end

end