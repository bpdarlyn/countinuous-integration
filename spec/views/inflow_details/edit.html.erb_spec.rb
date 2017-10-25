require 'rails_helper'

RSpec.describe "inflow_details/edit", type: :view do
  before(:each) do
    @inflow_detail = assign(:inflow_detail, InflowDetail.create!(
      :product => nil,
      :ticket_boxes_id => 1,
      :start_number => "9.99",
      :end_number => "9.99",
      :quantity => "9.99"
    ))
  end

  it "renders the edit inflow_detail form" do
    render

    assert_select "form[action=?][method=?]", inflow_detail_path(@inflow_detail), "post" do

      assert_select "input[name=?]", "inflow_detail[product_id]"

      assert_select "input[name=?]", "inflow_detail[ticket_boxes_id]"

      assert_select "input[name=?]", "inflow_detail[start_number]"

      assert_select "input[name=?]", "inflow_detail[end_number]"

      assert_select "input[name=?]", "inflow_detail[quantity]"
    end
  end
end
