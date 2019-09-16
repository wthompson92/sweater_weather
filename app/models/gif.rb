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
      darks_sky_connection = DarkSky.new(coords)
      summary = []
      dark_sky_connection.daily.each do |day|
      summary << day.summary
    end
    summary

  end

  def giphy_connection
    dark_sky_daily.each do
    giphy_connection = Giphy.new(darksky)
    binding.pry
    end
  end

end