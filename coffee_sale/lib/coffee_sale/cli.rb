class CoffeeSale::CLI

  def call
    puts "Welcome to CoffeeIcon: Specials - Enjoy limited time deals on select brands".colorize(:light_blue)
    @input = ""
    until @input == "exit"
    get_coffees
    list_coffees
    get_user_selection
    next_answer
  end
  goodbye
  end
  
  def get_coffees
    @coffees = CoffeeSale::Coffee.all
  end
  
  def list_coffees
    puts "Choose a number to see coffee details.".colorize(:green)
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
    puts "More information about:".colorize(:light_blue)
    puts "- #{coffee.name}"
    puts "- Original Price: #{coffee.orig_price}"
    puts "- SALE PRICE: #{coffee.sale_price}"
  end
  
  def next_answer
    puts "Type any key for another selection, or type 'exit'.".colorize(:green)
    @input = gets.strip
  end
  
  def goodbye
    puts "Thanks for shopping!".colorize(:light_blue)
  end

end