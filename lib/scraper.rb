require 'nokogiri'
require 'open-uri'

class Scraper

  URL =  "http://www.reddit.com/r/todayilearned/"

  def get_a_title
    ensure_fresh_titles
    random_title
  end

  def random_title
    Article.skip(rand(Article.count)).first
  end

  def remove_all_titles
    Article.delete_all
  end

  def save_new_titles
    titles = scrape_titles
    sanitized_titles = titles.select{ |title| title.present? && title.length > 10 }
    remove_all_titles if sanitized_titles.any?
    sanitized_titles.each { |title| Article.create(title: title) }
  end

  def scrape_titles
    doc = Nokogiri::HTML(open(URL))
    titles = doc.css('.thing .title').drop(2).map { |link| link.children[0].text }
  rescue
    []
  end 

  def ensure_fresh_titles
    if Article.count == 0 || (Article.last.created_at < DateTime.current - 20.minutes)
      save_new_titles
    end
  end
end
