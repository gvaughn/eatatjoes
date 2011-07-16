require 'spec_helper'

describe MenuItem do
  it "validates presense of name" do
    MenuItem.new(description:'yummy',price:5).should be_invalid
  end
  
  it "validates presence of price" do
    MenuItem.new(name:'Escargot',description:'slimy').should be_invalid
  end
end
