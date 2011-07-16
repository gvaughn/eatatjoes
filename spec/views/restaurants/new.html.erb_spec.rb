require 'spec_helper'

describe "restaurants/new.html.erb" do
  before(:each) do
    assign(:restaurant, stub_model(Restaurant).as_new_record)
  end

  it "renders new restaurant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => restaurants_path, :method => "post" do
    end
  end
end
