require "sinatra"
require 'httparty'
require 'nokogiri'

get "/" do

# def decimals(number)
#     sprintf ('%.2f' % number)
# end

# response = HTTParty.get('http://finance.yahoo.com/q?s=AAPL')
# dom = Nokogiri::HTML(response.body)
# appl_stock = dom.xpath("//span[@id='yfs_l84_aapl']").first
# appl_stock = appl_stock.text
# puts "The current price for AL is $#{appl_stock}"
# end

response = HTTParty.get('http://finance.yahoo.com/q?s=AAPL')
dom = Nokogiri::HTML(response.body)
appl_stock = dom.xpath("//span[@id='yfs_b00_aapl']").first
appl_stock = appl_stock.text
puts "The current price for AL is $#{appl_stock}"
end
