#!/home/chris/bin/ruby -w

require 'net/http'
require 'nokogiri'

req = Net::HTTP::Post.new("/athena/api", {'Content-Type' =>'application/xml'})

req.add_field("Authorization-Key", "API-KEY-GOES-HERE")

req.body = File.open('NDC_Request.xml', 'r') { |file| file.read }

puts "Making NDC request"

http = Net::HTTP.new('iata.api.mashery.com', 80)

res = http.start { http.request(req) }

puts "Response body:"
puts res.body

xml_doc = Nokogiri::XML( res.body )
puts xml_doc

puts "\nSelecting 4th offer:"
offers = xml_doc.css("AirlineOffer")[3]
puts offers