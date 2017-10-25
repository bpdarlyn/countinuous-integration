require 'rails_helper'

RSpec.describe "outflow_details/index", type: :view do
  before(:each) do
    assign(:outflow_details, [
      OutflowDetail.create!(
        :outflow => nil,
        :product => nil,
        :quantity => "9.99",
        :start_number => "9.99",
        :end_number => "9.99"
      ),
      OutflowDetail.create!(
        :outflow => nil,
        :product => nil,
        :quantity => "9.99",
        :start_number => "9.99",
        :end_number => "9.99"
      )
    ])
  end

  it "renders a list of outflow_details" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
