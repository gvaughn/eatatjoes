require 'spec_helper'

describe OrderItem do
  it "requires valid name" do
    OrderItem.new(price:1, quantity:3).valid?.should be_false
  end
  
  it "requires valid price" do
    OrderItem.new(name:"a",quantity:3).valid?.should be_false
  end
  
  it "requires valid quantity" do
    OrderItem.new(name:"a",price:3.5).valid?.should be_false
  end
end
