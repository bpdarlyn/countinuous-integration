require 'rails_helper'

RSpec.describe "inflow_details/new", type: :view do
  before(:each) do
    assign(:inflow_detail, InflowDetail.new(
      :product => nil,
      :ticket_boxes_id => 1,
      :start_number => "9.99",
      :end_number => "9.99",
      :quantity => "9.99"
    ))
  end

  it "renders new inflow_detail form" do
    render

    assert_select "form[action=?][method=?]", inflow_details_path, "post" do

      assert_select "input[name=?]", "inflow_detail[product_id]"

      assert_select "input[name=?]", "inflow_detail[ticket_boxes_id]"

      assert_select "input[name=?]", "inflow_detail[start_number]"

      assert_select "input[name=?]", "inflow_detail[end_number]"

      assert_select "input[name=?]", "inflow_detail[quantity]"
    end
  end
end
