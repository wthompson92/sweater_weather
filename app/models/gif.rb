class Gif
  attr_reader :id

  def initialize(location)
    @summary = summary

  end

  def coords
    connection = GoogleGeocoding.new(@location)
    connection.lat_and_long
  end

  def dark_sky_daily
      darks_sky_connection = DarkSky.new(coords)
      return dark_sky_connection.daily
  end

  def giphy_connection
    giphy_connection = Giphy.new(dark_sky_daily)
  end

end
