require 'rails_helper'

RSpec.describe "orden_requests/index", type: :view do
  before(:each) do
    assign(:orden_requests, [
      OrdenRequest.create!(
        :request_number => "Request Number",
        :in_charge => "In Charge",
        :event => "Event",
        :price_by_ticket => "9.99",
        :event_id => 2
      ),
      OrdenRequest.create!(
        :request_number => "Request Number",
        :in_charge => "In Charge",
        :event => "Event",
        :price_by_ticket => "9.99",
        :event_id => 2
      )
    ])
  end

  it "renders a list of orden_requests" do
    render
    assert_select "tr>td", :text => "Request Number".to_s, :count => 2
    assert_select "tr>td", :text => "In Charge".to_s, :count => 2
    assert_select "tr>td", :text => "Event".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
