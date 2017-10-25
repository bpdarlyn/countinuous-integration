require "rails_helper"

RSpec.describe OutflowDetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/outflow_details").to route_to("outflow_details#index")
    end

    it "routes to #new" do
      expect(:get => "/outflow_details/new").to route_to("outflow_details#new")
    end

    it "routes to #show" do
      expect(:get => "/outflow_details/1").to route_to("outflow_details#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/outflow_details/1/edit").to route_to("outflow_details#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/outflow_details").to route_to("outflow_details#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/outflow_details/1").to route_to("outflow_details#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/outflow_details/1").to route_to("outflow_details#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/outflow_details/1").to route_to("outflow_details#destroy", :id => "1")
    end

  end
end
