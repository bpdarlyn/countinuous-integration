require 'rails_helper'

RSpec.describe "PersonalInCharges", type: :request do
  describe "GET /personal_in_charges" do
    it "works! (now write some real specs)" do
      get personal_in_charges_path
      expect(response).to have_http_status(200)
    end
  end
end
