require 'nokogiri'
require 'open-uri'

class Scraper

  URL =  "http://www.reddit.com/r/todayilearned/"

  def random_title
    
  end

  def fetch_titles
    doc = Nokogiri::HTML(open(URL))
    doc.css('.thing .title').drop(2).map { |link| link.children[0].try(:text) }
  end 
end
