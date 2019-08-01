class CoffeeSale::Scraper
  
  def self.scrape_coffees
    doc = Nokogiri::HTML(open("https://coffeeicon.com/single-serve-cups/managers-special/"))

  coffees = doc.css("div.card-body")
  
  coffees.each do |c| #iterate over each coffee name
    name = c.css('h4 a').text  #assign "name" to each coffee name
    CoffeeSale::Coffee.new(name)  #passing in the iterated "name" to the new instance of Coffee
    end
  end
  
  def self.scrape_details(coffee)
    CoffeeSale::Detail.new("$10.99", "$8.99")
    CoffeeSale::Detail.new("$7.99", "$5.99")
  end
  
end