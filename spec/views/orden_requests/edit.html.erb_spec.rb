require 'rails_helper'

RSpec.describe "orden_requests/edit", type: :view do
  before(:each) do
    @orden_request = assign(:orden_request, OrdenRequest.create!(
      :request_number => "MyString",
      :in_charge => "MyString",
      :event => "MyString",
      :price_by_ticket => "9.99",
      :event_id => 1
    ))
  end

  it "renders the edit orden_request form" do
    render

    assert_select "form[action=?][method=?]", orden_request_path(@orden_request), "post" do

      assert_select "input[name=?]", "orden_request[request_number]"

      assert_select "input[name=?]", "orden_request[in_charge]"

      assert_select "input[name=?]", "orden_request[event]"

      assert_select "input[name=?]", "orden_request[price_by_ticket]"

      assert_select "input[name=?]", "orden_request[event_id]"
    end
  end
end
