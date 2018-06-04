require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  class Books_library
    def get_page
      Nokogiri::HTML(open("https://www.goodreads.com/author/list/19823.Sylvia_Day?page=1&per_page=99999"))
    end

    def get_book_titles
      book_title = self.get_page.css('a.bookTitle')
      binding.pry
    end

  end
end
