require 'rails_helper'

RSpec.describe "outflows/edit", type: :view do
  before(:each) do
    @outflow = assign(:outflow, Outflow.create!(
      :orden_request_id => 1
    ))
  end

  it "renders the edit outflow form" do
    render

    assert_select "form[action=?][method=?]", outflow_path(@outflow), "post" do

      assert_select "input[name=?]", "outflow[orden_request_id]"
    end
  end
end
