class CoffeeSale::Scraper
  
  def self.scrape_coffees
    doc = Nokogiri::HTML(open("https://coffeeicon.com/single-serve-cups/managers-special/"))

  coffees = doc.css("div.card-body")
  
  coffees.each do |c| #iterate over each coffee name
    name = c.css('a').text  #assign "name" to each coffee name
    CoffeeSale::Coffee.new(name)  #passing in the iterated "name" to the new instance of Coffee
    end
  end
  
end