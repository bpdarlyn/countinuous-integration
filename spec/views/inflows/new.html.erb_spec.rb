require 'rails_helper'

RSpec.describe "inflows/new", type: :view do
  before(:each) do
    assign(:inflow, Inflow.new())
  end

  it "renders new inflow form" do
    render

    assert_select "form[action=?][method=?]", inflows_path, "post" do
    end
  end
end
