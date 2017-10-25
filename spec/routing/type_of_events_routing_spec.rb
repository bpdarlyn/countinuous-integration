require "rails_helper"

RSpec.describe TypeOfEventsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/type_of_events").to route_to("type_of_events#index")
    end

    it "routes to #new" do
      expect(:get => "/type_of_events/new").to route_to("type_of_events#new")
    end

    it "routes to #show" do
      expect(:get => "/type_of_events/1").to route_to("type_of_events#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/type_of_events/1/edit").to route_to("type_of_events#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/type_of_events").to route_to("type_of_events#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/type_of_events/1").to route_to("type_of_events#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/type_of_events/1").to route_to("type_of_events#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/type_of_events/1").to route_to("type_of_events#destroy", :id => "1")
    end

  end
end
