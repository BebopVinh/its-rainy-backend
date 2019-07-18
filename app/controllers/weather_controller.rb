class WeatherController < ApplicationController

   # before_action :set_dark_sky

   #API Key: '12b162f285f6f8d240443a58e0d1819e'

   def index
      conn = Faraday::Connection.new 'https://api.darksky.net/forecast/12b162f285f6f8d240443a58e0d1819e'
      @weather = conn.get '37.8267,-122.4233'
      render json: JSON.parse(@weather.body)
   end

end
