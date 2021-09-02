class HomesController < ApplicationController
  def index
    require 'net/http'
    require 'json'

    @url = 'http://api.openweathermap.org/data/2.5/weather?q=berlin,de&appid='
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @output = JSON.parse(@response)
  end
end