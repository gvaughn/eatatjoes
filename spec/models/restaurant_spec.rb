require 'spec_helper'

describe Restaurant do
  it "validates presence of name" do
    Restaurant.new.should be_invalid
  end
end
