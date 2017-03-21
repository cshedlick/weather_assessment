require 'minitest/autorun'
require 'minitest/pride'
require './weather_class.rb'


class WeatherTest < Minitest::Test
  def test_initialize
    Weather.new('27703')
  end

  def test_city
    test_city_one = Weather.new('27703').city
    assert test_city_one == "Durham"

    test_city_two = Weather.new('38928').city
    assert test_city_two == "Glendora"

    test_city_two = Weather.new('83274').city
    assert test_city_two == "Shelley"
  end

  def test_state
    test_city_one = Weather.new('27703').state
    assert test_city_one == "NC"

    test_city_two = Weather.new('38928').state
    assert test_city_two == "MS"

    test_city_two = Weather.new('83274').state
    assert test_city_two == "ID"
  end
end
