require 'rails_helper'

RSpec.describe "OrdenRequestDetails", type: :request do
  describe "GET /orden_request_details" do
    it "works! (now write some real specs)" do
      get orden_request_details_path
      expect(response).to have_http_status(200)
    end
  end
end
