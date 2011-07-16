require 'spec_helper'

describe MenuItem do
  it "validates presense of name" do
    MenuItem.new(description:'yummy').should be_invalid
  end
  
  it "validates presence of price" do
    MenuItem.new(name:'Escargot').should be_invalid
  end
end
