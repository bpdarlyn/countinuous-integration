require 'rails_helper'

RSpec.describe "TypeOfEvents", type: :request do
  describe "GET /type_of_events" do
    it "works! (now write some real specs)" do
      get type_of_events_path
      expect(response).to have_http_status(200)
    end
  end
end
