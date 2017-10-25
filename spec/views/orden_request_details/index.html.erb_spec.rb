require 'rails_helper'

RSpec.describe "orden_request_details/index", type: :view do
  before(:each) do
    assign(:orden_request_details, [
      OrdenRequestDetail.create!(
        :orden_request => nil,
        :product => nil,
        :quantity => "9.99"
      ),
      OrdenRequestDetail.create!(
        :orden_request => nil,
        :product => nil,
        :quantity => "9.99"
      )
    ])
  end

  it "renders a list of orden_request_details" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
