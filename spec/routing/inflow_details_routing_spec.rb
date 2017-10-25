require "rails_helper"

RSpec.describe InflowDetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/inflow_details").to route_to("inflow_details#index")
    end

    it "routes to #new" do
      expect(:get => "/inflow_details/new").to route_to("inflow_details#new")
    end

    it "routes to #show" do
      expect(:get => "/inflow_details/1").to route_to("inflow_details#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/inflow_details/1/edit").to route_to("inflow_details#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/inflow_details").to route_to("inflow_details#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/inflow_details/1").to route_to("inflow_details#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/inflow_details/1").to route_to("inflow_details#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/inflow_details/1").to route_to("inflow_details#destroy", :id => "1")
    end

  end
end
