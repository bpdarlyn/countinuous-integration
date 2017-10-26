require "rails_helper"

RSpec.describe PersonalInChargesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/personal_in_charges").to route_to("personal_in_charges#index")
    end

    it "routes to #new" do
      expect(:get => "/personal_in_charges/new").to route_to("personal_in_charges#new")
    end

    it "routes to #show" do
      expect(:get => "/personal_in_charges/1").to route_to("personal_in_charges#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/personal_in_charges/1/edit").to route_to("personal_in_charges#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/personal_in_charges").to route_to("personal_in_charges#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/personal_in_charges/1").to route_to("personal_in_charges#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/personal_in_charges/1").to route_to("personal_in_charges#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/personal_in_charges/1").to route_to("personal_in_charges#destroy", :id => "1")
    end

  end
end
