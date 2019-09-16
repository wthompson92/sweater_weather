require 'rails_helper'

describe GoogleGeocoding do
  before :each do
    @geocoded = GoogleGeocoding.new('denver')
  end

  it "returns data" do
    expect(@geocoded.lat_and_long).to be_a Hash
end
end
