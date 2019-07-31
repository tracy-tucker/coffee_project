class CoffeeSale::Scraper
  def scrape_coffees
    doc = Nokogiri::HTML(open("https://coffeeicon.com/single-serve-cups/managers-special/"))
  end
  
end