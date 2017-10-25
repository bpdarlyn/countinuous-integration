require 'rails_helper'

RSpec.describe "inflows/show", type: :view do
  before(:each) do
    @inflow = assign(:inflow, Inflow.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
