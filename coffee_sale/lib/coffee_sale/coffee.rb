class CoffeeSale::Coffee
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end

  def self.all
    CoffeeSale::Scraper.scrape_coffees if @@all.empty?
    @@all
  end
    
  def save
    @@all << self
  end
  
  
end