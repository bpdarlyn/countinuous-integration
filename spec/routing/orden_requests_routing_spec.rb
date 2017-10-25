require "rails_helper"

RSpec.describe OrdenRequestsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/orden_requests").to route_to("orden_requests#index")
    end

    it "routes to #new" do
      expect(:get => "/orden_requests/new").to route_to("orden_requests#new")
    end

    it "routes to #show" do
      expect(:get => "/orden_requests/1").to route_to("orden_requests#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/orden_requests/1/edit").to route_to("orden_requests#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/orden_requests").to route_to("orden_requests#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/orden_requests/1").to route_to("orden_requests#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/orden_requests/1").to route_to("orden_requests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/orden_requests/1").to route_to("orden_requests#destroy", :id => "1")
    end

  end
end
