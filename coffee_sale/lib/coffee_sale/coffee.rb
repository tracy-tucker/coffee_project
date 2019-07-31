class CoffeeSale::Coffee
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)  #initialize is communicating with scraper.rb to grabbing the "name" value
    @name = name
    save  #refer to the #save method
  end

  def self.all
    CoffeeSale::Scraper.scrape_coffees if @@all.empty?
    @@all
  end
    
  def save  #Taking the newly added Coffee (self) and SAVING it in the @@all array
    @@all << self
  end
  
  
end