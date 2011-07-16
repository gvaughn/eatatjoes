require 'spec_helper'

describe "Root path" do
  it "routes to restaurants#index" do
    get("/").should route_to("restaurants#index")
  end
end

