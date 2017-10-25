require 'rails_helper'

RSpec.describe "orden_requests/show", type: :view do
  before(:each) do
    @orden_request = assign(:orden_request, OrdenRequest.create!(
      :request_number => "Request Number",
      :in_charge => "In Charge",
      :event => "Event",
      :price_by_ticket => "9.99",
      :event_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Request Number/)
    expect(rendered).to match(/In Charge/)
    expect(rendered).to match(/Event/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
  end
end
