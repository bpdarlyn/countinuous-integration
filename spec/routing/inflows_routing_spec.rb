require "rails_helper"

RSpec.describe InflowsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/inflows").to route_to("inflows#index")
    end

    it "routes to #new" do
      expect(:get => "/inflows/new").to route_to("inflows#new")
    end

    it "routes to #show" do
      expect(:get => "/inflows/1").to route_to("inflows#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/inflows/1/edit").to route_to("inflows#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/inflows").to route_to("inflows#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/inflows/1").to route_to("inflows#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/inflows/1").to route_to("inflows#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/inflows/1").to route_to("inflows#destroy", :id => "1")
    end

  end
end
