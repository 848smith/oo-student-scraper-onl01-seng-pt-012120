require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    html = File.read('https://learn-co-curriculum.github.io/student-scraper-test-page/')
    scraper = Nokogiri::HTML(html)
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

