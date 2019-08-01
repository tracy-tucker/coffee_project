class CoffeeSale::Detail
  
  attr_accessor :name, :coffee, :details
  
  @@all = []
  
  def initialize(orig_price, sale_price)  #initialize is communicating with scraper.rb to grabbing the "orig_price" and "sale_price" values
    @details = details
    save  #refer to the #save method
    add_to_coffee
  end
  
  def self.all
    @@all
  end
  
  def add_to_coffee
    binding.pry
    @coffee.details << self unless @coffee.details.include?(self) 
  end

  def save  #Taking the newly added Coffee (self) and SAVING it in the @@all array
    @@all << self
  end
  
end