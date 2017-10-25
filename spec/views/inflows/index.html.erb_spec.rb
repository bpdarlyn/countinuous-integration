require 'rails_helper'

RSpec.describe "inflows/index", type: :view do
  before(:each) do
    assign(:inflows, [
      Inflow.create!(),
      Inflow.create!()
    ])
  end

  it "renders a list of inflows" do
    render
  end
end
