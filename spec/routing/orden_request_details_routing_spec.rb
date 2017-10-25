require "rails_helper"

RSpec.describe OrdenRequestDetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/orden_request_details").to route_to("orden_request_details#index")
    end

    it "routes to #new" do
      expect(:get => "/orden_request_details/new").to route_to("orden_request_details#new")
    end

    it "routes to #show" do
      expect(:get => "/orden_request_details/1").to route_to("orden_request_details#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/orden_request_details/1/edit").to route_to("orden_request_details#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/orden_request_details").to route_to("orden_request_details#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/orden_request_details/1").to route_to("orden_request_details#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/orden_request_details/1").to route_to("orden_request_details#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/orden_request_details/1").to route_to("orden_request_details#destroy", :id => "1")
    end

  end
end
