require 'rails_helper'

RSpec.describe "historical_boxes/new", type: :view do
  before(:each) do
    assign(:historical_box, HistoricalBox.new(
      :ticket_box => nil,
      :status => false,
      :available => "9.99",
      :not_available => "9.99",
      :inflow_detail_id => 1,
      :outflow_integer_id => 1
    ))
  end

  it "renders new historical_box form" do
    render

    assert_select "form[action=?][method=?]", historical_boxes_path, "post" do

      assert_select "input[name=?]", "historical_box[ticket_box_id]"

      assert_select "input[name=?]", "historical_box[status]"

      assert_select "input[name=?]", "historical_box[available]"

      assert_select "input[name=?]", "historical_box[not_available]"

      assert_select "input[name=?]", "historical_box[inflow_detail_id]"

      assert_select "input[name=?]", "historical_box[outflow_integer_id]"
    end
  end
end
