require 'spec_helper'

describe "restaurants/index.html.erb" do
  before(:each) do
    assign(:restaurants, [
      stub_model(Restaurant),
      stub_model(Restaurant)
    ])
  end

  it "renders a list of restaurants" do
    render
  end
end
