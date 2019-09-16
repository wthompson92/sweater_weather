require 'rails_helper'

describe Giphy do
  before :each do
    google_connect = GoogleGeocoding.new('denver')
    dark_sky = DarkSky.new(geocoded.lat_and_long)
    giphy = Giphy.new(darksky.hourly)
  end

  it "returns data" do
    expect(@geocoded.lat_and_long).to be_a Hash
end
end
