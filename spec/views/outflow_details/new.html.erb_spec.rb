require 'rails_helper'

RSpec.describe "outflow_details/new", type: :view do
  before(:each) do
    assign(:outflow_detail, OutflowDetail.new(
      :outflow => nil,
      :product => nil,
      :quantity => "9.99",
      :start_number => "9.99",
      :end_number => "9.99"
    ))
  end

  it "renders new outflow_detail form" do
    render

    assert_select "form[action=?][method=?]", outflow_details_path, "post" do

      assert_select "input[name=?]", "outflow_detail[outflow_id]"

      assert_select "input[name=?]", "outflow_detail[product_id]"

      assert_select "input[name=?]", "outflow_detail[quantity]"

      assert_select "input[name=?]", "outflow_detail[start_number]"

      assert_select "input[name=?]", "outflow_detail[end_number]"
    end
  end
end
