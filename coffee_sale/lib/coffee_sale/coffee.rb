class CoffeeSale::Coffee
  
  attr_accessor :name, :orig_price, :sale_price
  
  @@all = []
  
  def initialize(name, orig_price, sale_price)  #initialize is communicating with scraper.rb to grabbing the "name" value
    @name = name
    @orig_price = orig_price
    @sale_price = sale_price
    save  #refer to the #save method
  end

  def self.all
    CoffeeSale::Scraper.scrape_coffees if @@all.empty?
    @@all
  end

  def save  #Taking the newly added Coffee (self) and SAVING it in the @@all array
    @@all << self
  end
  
  def self.find_my_coffee(searched_string) # search for a coffee based on a search criteria. Return all coffees that match that criteria
  all.collect do |c|
    c.indclude?(searched_string)
    searched_string if != searched_string
  end
  end
  
end