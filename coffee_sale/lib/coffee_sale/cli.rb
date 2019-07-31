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
    CoffeeSale::Coffee.new('coffee_1')
    CoffeeSale::Coffee.new('coffee_2')
    @coffees = CoffeeSale::Coffee.all
  end
  
  def list_coffees
    puts "Choose a number to see coffee details."
    @coffees.each.with_index(1) do |coffee, index|
      puts "#{index}. #{coffee.name}"
    end
  end
  
  def get_user_selection
    chosen_coffee = gets.strip.to_i
    show_coffee_descr_for(chosen_coffee) if valid_input(chosen_coffee, @coffees)
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def show_coffee_descr_for(chosen_coffee)
    coffee = @coffees[chosen_coffee - 1] # -1 because an index of an array always starts at 0
    puts "More information about #{coffee}."
  end

end