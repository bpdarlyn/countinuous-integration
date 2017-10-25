require 'rails_helper'

RSpec.describe "historical_boxes/show", type: :view do
  before(:each) do
    @historical_box = assign(:historical_box, HistoricalBox.create!(
      :ticket_box => nil,
      :status => false,
      :available => "9.99",
      :not_available => "9.99",
      :inflow_detail_id => 2,
      :outflow_integer_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
