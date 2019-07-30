# require_relative '../coffee_sale'
# require 'pry' 

class CoffeeSale::CLI
  

  def call
    puts "Welcome to CoffeeIcon: Manager's Special - Enjoy limited time deals on select brands"
    get_coffees
    list_coffees
    get_user_selection
    # show_coffee_descr(name, orig_price, sale_price, count, strength, flavored, organic, kosher)
  end
  
  def get_coffees
    # to be scraped instead
    @coffees = ["coffee_1", "coffee_2", "coffee_3", "coffee_4", "coffee_5", "coffee_6"]
  end
  
  def list_coffees
    puts "Choose a number to see coffee details."
    @coffees.each.with_index(1) do |coffee, index|
      puts "#{index}. #{coffee}"
    end
  end
  
  def get_user_selection
    chosen_coffee = gets.strip
    binding.pry
    # if valid_input(chosen_coffee, @coffees)
    # end
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end

end