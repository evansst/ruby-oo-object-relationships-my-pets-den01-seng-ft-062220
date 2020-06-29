class Cat
  attr_accessor :mood
  attr_reader :name, :owner

  @@all = []
  
  def initialize name, owner
    @name = name
    self.owner = owner
    @mood = 'nervous'
    @@all << self

  end

  def self.all
    @@all
  end

  def owner= owner
    owner.cats << self unless !owner
    @owner = owner
  end


end