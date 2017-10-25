require 'rails_helper'

RSpec.describe "inflow_details/index", type: :view do
  before(:each) do
    assign(:inflow_details, [
      InflowDetail.create!(
        :product => nil,
        :ticket_boxes_id => 2,
        :start_number => "9.99",
        :end_number => "9.99",
        :quantity => "9.99"
      ),
      InflowDetail.create!(
        :product => nil,
        :ticket_boxes_id => 2,
        :start_number => "9.99",
        :end_number => "9.99",
        :quantity => "9.99"
      )
    ])
  end

  it "renders a list of inflow_details" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
