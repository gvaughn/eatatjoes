require 'spec_helper'

describe "restaurants/show.html.erb" do
  before(:each) do
    @restaurant = assign(:restaurant, stub_model(Restaurant))
  end

  it "renders attributes in <p>" do
    render
  end
end
