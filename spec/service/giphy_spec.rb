require 'rails_helper'

describe Giphy do
  before :each do
    @giphy = Giphy.new("Sunny")
  end

  it "returns data" do
    expect(@giphy.url).to be_a Hash
end
end
