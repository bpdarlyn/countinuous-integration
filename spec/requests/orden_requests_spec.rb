require 'rails_helper'

RSpec.describe "OrdenRequests", type: :request do
  describe "GET /orden_requests" do
    it "works! (now write some real specs)" do
      get orden_requests_path
      expect(response).to have_http_status(200)
    end
  end
end
