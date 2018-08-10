class Owner
  attr_accessor :pets, :name 
  attr_reader :species
  
  @@all = []
  
  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end 
  
  def self.all
    @@all
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def self.count
    self.all.size
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
    
  end 
  
  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end 
  
  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end 
  
  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    all_pets = self.pets.values.flatten 
    all_pets.each do |pet|
      pet.mood= "nervous"
    end
    self.pets.clear
  end
  
 def list_pets
  "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
 end 

end