class CoffeeSale::Scraper
  
  def self.scrape_coffees
    doc = Nokogiri::HTML(open("https://coffeeicon.com/single-serve-cups/managers-special/"))

  coffees = doc.css("div.card-body")
  
  coffees.each do |c| #iterate over each coffee
    name = c.css('h4 a').text  #assign "name" to each coffee
    orig_price = c.css('span.price.price--non-sale').text.strip #assign "orig_price" to each coffee
    sale_price = c.css('span.price.price--withoutTax').text.strip #assign "sale_price" to each coffee
    CoffeeSale::Coffee.new(name, orig_price, sale_price)  #passing in the iterated "name", "orig_price", "sale_price" to the new instance of Coffee
    end
  end

end