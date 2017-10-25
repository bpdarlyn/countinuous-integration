require 'rails_helper'

RSpec.describe "orden_request_details/edit", type: :view do
  before(:each) do
    @orden_request_detail = assign(:orden_request_detail, OrdenRequestDetail.create!(
      :orden_request => nil,
      :product => nil,
      :quantity => "9.99"
    ))
  end

  it "renders the edit orden_request_detail form" do
    render

    assert_select "form[action=?][method=?]", orden_request_detail_path(@orden_request_detail), "post" do

      assert_select "input[name=?]", "orden_request_detail[orden_request_id]"

      assert_select "input[name=?]", "orden_request_detail[product_id]"

      assert_select "input[name=?]", "orden_request_detail[quantity]"
    end
  end
end
