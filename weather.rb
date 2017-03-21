require 'httparty'
require './weather_class.rb'


puts "Hello."

all_responses = []
zip = ""
output = ""

while all_responses == [] || all_responses.last == "y" do
  puts "Enter a zipcode"
  zip_code = gets.chomp

  begin
    output = Weather.new("#{zip_code}")
    puts output.weather_output
  rescue NoMethodError
    puts "You must enter a valid zipcode."
  end

  puts "Would you like another weather summary? (y/n)"
  all_responses << gets.chomp
end
