require "rails_helper"

RSpec.describe OutflowsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/outflows").to route_to("outflows#index")
    end

    it "routes to #new" do
      expect(:get => "/outflows/new").to route_to("outflows#new")
    end

    it "routes to #show" do
      expect(:get => "/outflows/1").to route_to("outflows#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/outflows/1/edit").to route_to("outflows#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/outflows").to route_to("outflows#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/outflows/1").to route_to("outflows#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/outflows/1").to route_to("outflows#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/outflows/1").to route_to("outflows#destroy", :id => "1")
    end

  end
end
