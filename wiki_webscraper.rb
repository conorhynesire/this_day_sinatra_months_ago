require 'sinatra'
require './services/wikipedia_scraper'
require 'active_support/time'


include WikipediaScraper

get '/' do
  @article = WikipediaScraper.get_random_article(6.months.ago)

  puts @article

  erb :index
end
