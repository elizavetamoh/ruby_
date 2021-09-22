require 'open-uri'
require 'nokogiri'

url = "https://yandex.ru/news"
html = URI.open(url)
doc = Nokogiri::HTML (html)
news = doc.css('.mg-card__text')

10.times do |i|
    puts "#{i}. #{news[i].text}"
end 