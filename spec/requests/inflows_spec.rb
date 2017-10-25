require 'rails_helper'

RSpec.describe "Inflows", type: :request do
  describe "GET /inflows" do
    it "works! (now write some real specs)" do
      get inflows_path
      expect(response).to have_http_status(200)
    end
  end
end
