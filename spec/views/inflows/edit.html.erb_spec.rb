require 'rails_helper'

RSpec.describe "inflows/edit", type: :view do
  before(:each) do
    @inflow = assign(:inflow, Inflow.create!())
  end

  it "renders the edit inflow form" do
    render

    assert_select "form[action=?][method=?]", inflow_path(@inflow), "post" do
    end
  end
end
