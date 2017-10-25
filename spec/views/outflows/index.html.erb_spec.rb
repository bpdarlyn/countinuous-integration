require 'rails_helper'

RSpec.describe "outflows/index", type: :view do
  before(:each) do
    assign(:outflows, [
      Outflow.create!(
        :orden_request_id => 2
      ),
      Outflow.create!(
        :orden_request_id => 2
      )
    ])
  end

  it "renders a list of outflows" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
