require 'rails_helper'

RSpec.describe "inflow_details/show", type: :view do
  before(:each) do
    @inflow_detail = assign(:inflow_detail, InflowDetail.create!(
      :product => nil,
      :ticket_boxes_id => 2,
      :start_number => "9.99",
      :end_number => "9.99",
      :quantity => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
