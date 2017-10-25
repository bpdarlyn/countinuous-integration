require 'rails_helper'

RSpec.describe "orden_request_details/new", type: :view do
  before(:each) do
    assign(:orden_request_detail, OrdenRequestDetail.new(
      :orden_request => nil,
      :product => nil,
      :quantity => "9.99"
    ))
  end

  it "renders new orden_request_detail form" do
    render

    assert_select "form[action=?][method=?]", orden_request_details_path, "post" do

      assert_select "input[name=?]", "orden_request_detail[orden_request_id]"

      assert_select "input[name=?]", "orden_request_detail[product_id]"

      assert_select "input[name=?]", "orden_request_detail[quantity]"
    end
  end
end
