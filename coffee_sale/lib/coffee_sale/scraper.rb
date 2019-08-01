class CoffeeSale::Scraper
  
  def self.scrape_coffees
    doc = Nokogiri::HTML(open("https://coffeeicon.com/single-serve-cups/managers-special/"))

  coffees = doc.css("div.card-body")
  
  coffees.each do |c| #iterate over each coffee
    name = c.css('h4 a').text  #assign "name" to each coffee
    orig_price = c.css('span.price.price--non-sale').text.strip
    sale_price = c.css('span.price.price--withoutTax').text.strip
    CoffeeSale::Coffee.new(name, orig_price, sale_price)  #passing in the iterated "name", "orig_price" and "sale_price" to the new instance of Coffee
    end
  end
  
  # def self.scrape_details(coffee)
  #   details = []
  #   CoffeeSale::Detail.new("$10.99", "$8.99")
  #   CoffeeSale::Detail.new("$7.99", "$5.99")
  #   details << self
  # end
  
end