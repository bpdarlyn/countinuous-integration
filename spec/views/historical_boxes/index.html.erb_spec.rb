require 'rails_helper'

RSpec.describe "historical_boxes/index", type: :view do
  before(:each) do
    assign(:historical_boxes, [
      HistoricalBox.create!(
        :ticket_box => nil,
        :status => false,
        :available => "9.99",
        :not_available => "9.99",
        :inflow_detail_id => 2,
        :outflow_integer_id => 3
      ),
      HistoricalBox.create!(
        :ticket_box => nil,
        :status => false,
        :available => "9.99",
        :not_available => "9.99",
        :inflow_detail_id => 2,
        :outflow_integer_id => 3
      )
    ])
  end

  it "renders a list of historical_boxes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
