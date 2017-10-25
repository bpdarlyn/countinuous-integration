require "rails_helper"

RSpec.describe HistoricalBoxesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/historical_boxes").to route_to("historical_boxes#index")
    end

    it "routes to #new" do
      expect(:get => "/historical_boxes/new").to route_to("historical_boxes#new")
    end

    it "routes to #show" do
      expect(:get => "/historical_boxes/1").to route_to("historical_boxes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/historical_boxes/1/edit").to route_to("historical_boxes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/historical_boxes").to route_to("historical_boxes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/historical_boxes/1").to route_to("historical_boxes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/historical_boxes/1").to route_to("historical_boxes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/historical_boxes/1").to route_to("historical_boxes#destroy", :id => "1")
    end

  end
end
