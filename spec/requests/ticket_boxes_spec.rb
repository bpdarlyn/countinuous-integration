require 'rails_helper'

RSpec.describe "TicketBoxes", type: :request do
  describe "GET /ticket_boxes" do
    it "works! (now write some real specs)" do
      get ticket_boxes_path
      expect(response).to have_http_status(200)
    end
  end
end
