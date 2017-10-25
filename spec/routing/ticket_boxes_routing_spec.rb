require "rails_helper"

RSpec.describe TicketBoxesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ticket_boxes").to route_to("ticket_boxes#index")
    end

    it "routes to #new" do
      expect(:get => "/ticket_boxes/new").to route_to("ticket_boxes#new")
    end

    it "routes to #show" do
      expect(:get => "/ticket_boxes/1").to route_to("ticket_boxes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ticket_boxes/1/edit").to route_to("ticket_boxes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ticket_boxes").to route_to("ticket_boxes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ticket_boxes/1").to route_to("ticket_boxes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ticket_boxes/1").to route_to("ticket_boxes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ticket_boxes/1").to route_to("ticket_boxes#destroy", :id => "1")
    end

  end
end
