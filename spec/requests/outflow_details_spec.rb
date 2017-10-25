require 'rails_helper'

RSpec.describe "OutflowDetails", type: :request do
  describe "GET /outflow_details" do
    it "works! (now write some real specs)" do
      get outflow_details_path
      expect(response).to have_http_status(200)
    end
  end
end
