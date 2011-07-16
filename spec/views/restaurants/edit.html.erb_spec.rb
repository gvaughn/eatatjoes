require 'spec_helper'

describe "restaurants/edit.html.erb" do
  before(:each) do
    @restaurant = assign(:restaurant, stub_model(Restaurant))
  end

  it "renders the edit restaurant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => restaurants_path(@restaurant), :method => "post" do
    end
  end
end
