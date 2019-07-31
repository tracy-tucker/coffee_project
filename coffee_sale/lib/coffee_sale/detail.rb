class CoffeeSale::Detail
  
  attr_accessor :name, :orig_pric, :sale_price, :key_info
  
  @@all = []
  
  def initialize(name, coffee)  #initialize is communicating with scraper.rb to grabbing the "name" value
    @name = name
    save  #refer to the #save method
  end
  
  def self.all
    @@all
  end

  def save  #Taking the newly added Coffee (self) and SAVING it in the @@all array
    @@all << self
  end
  
end