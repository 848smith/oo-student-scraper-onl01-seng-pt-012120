require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    students = []
    html = open(index_url)
    index = Nokogiri::HTML(html)
    index.css("div.student-card").each do |student|
      student_details = {
        :name => student.css("h4.student-name").text,
        :location => student.css("p.student-location").text,
        :profile_url => "http://students.learn.co/" + student.css("a").attribute("href")
      }
      students << student_details
    end
    students
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

