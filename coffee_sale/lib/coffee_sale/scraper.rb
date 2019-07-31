class CoffeeSale::Scraper
  def self.scrape_coffees
    doc = Nokogiri::HTML(open("https://coffeeicon.com/single-serve-cups/managers-special/"))
    # binding.pry
  end
  
end