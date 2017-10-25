require 'rails_helper'

RSpec.describe "outflows/new", type: :view do
  before(:each) do
    assign(:outflow, Outflow.new(
      :orden_request_id => 1
    ))
  end

  it "renders new outflow form" do
    render

    assert_select "form[action=?][method=?]", outflows_path, "post" do

      assert_select "input[name=?]", "outflow[orden_request_id]"
    end
  end
end
