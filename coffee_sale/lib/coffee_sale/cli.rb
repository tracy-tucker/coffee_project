# require_relative '../coffee_sale'
require 'pry' 

class CoffeeSale::CLI
  

  def call
    puts "Welcome to CoffeeIcon: Manager's Special - Enjoy limited time deals on select brands"
    get_coffees
    get_user_selection
    # show_coffee_descr(name, orig_price, sale_price, count, strength, flavored, organic, kosher)
  end
  
  def get_coffees
    # binding.pry
    # to be scraped instead
    @coffees = ["coffee_1", "coffee_2", "coffee_3", "coffee_4", "coffee_5", "coffee_6"]
    
  end
  
  def get_user_selection
    @coffees.each_with_index do |index, coffee|
      binding.pry
      puts "#{index + 1} #{coffee}"
    end
  end

end