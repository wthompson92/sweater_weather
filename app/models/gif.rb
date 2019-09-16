class Gif
  attr_reader :id

  def initialize(location)
    @location = location
    @id = 1
  end

  def coords
    connection = GoogleGeocoding.new(@location)
    connection.lat_and_long
  end

  def dark_sky_daily
    dark_sky_connection = DarkSky.new(coords)
    summary = []
    dark_sky_connection.daily[:data].each do  |day|
      summary << day[:summary]
    end
    summary
  end

  def url
    array = Array.new
    dark_sky_daily.each do |darksky|
      giphy_connection = Giphy.new(darksky)
      parse = giphy_connection.get_json[:data]
     array << parse.first[:url]

    end
    array
    binding.pry
  end
end
