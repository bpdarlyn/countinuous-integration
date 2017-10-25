require 'rails_helper'

RSpec.describe "Outflows", type: :request do
  describe "GET /outflows" do
    it "works! (now write some real specs)" do
      get outflows_path
      expect(response).to have_http_status(200)
    end
  end
end
