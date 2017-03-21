require 'httparty'

class Weather
  def initialize(zip)
    api_key = "api_key"

    response = HTTParty.get("http://api.wunderground.com/api/#{api_key}/geolookup/q/#{zip}.json")
    @city = response["location"]["city"]
    @state = response["location"]["state"]

    response_two = HTTParty.get("http://api.wunderground.com/api/#{api_key}/conditions/q/#{@state}/#{@city}.json")
    @wind_string = response_two["current_observation"]["wind_string"]
    @temperature_string = response_two["current_observation"]["temperature_string"]
    @weather_condition = response_two["current_observation"]["weather"]
    @humidity = response_two["current_observation"]["relative_humidity"]
    @feelslike = response_two["current_observation"]["feelslike_string"]
  end

  def weather_output
    "It is currently #{@weather_condition} and #{@temperature_string} in #{@city}, #{@state}. With wind blowing #{@wind_string} and humidity at #{@humidity}, it feels like #{@feelslike}."
  end

  def city
    @city
  end

  def state
    @state
  end

  def wind_string
    @wind_string
  end

  def temperature_string
    @temperature_string
  end

end
