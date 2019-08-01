class CoffeeSale::Detail
  
  attr_accessor :name, :orig_pric, :sale_price
  
  @@all = []
  
  def initialize(orig_pric, sale_price)  #initialize is communicating with scraper.rb to grabbing the "name" value
    @orig_pric = orig_pric
    @sale_price = sale_price
    # @details = details
    save  #refer to the #save method
    # @coffee = coffee
    #notify month about the event
    add_to_coffee
  end
  
  def self.all
    @@all
  end
  
  def add_to_coffee
    # binding.pry
    CoffeeSale::Coffee.details << self
  end

  def save  #Taking the newly added Coffee (self) and SAVING it in the @@all array
    @@all << self
  end
  
end