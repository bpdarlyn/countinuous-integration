require 'rails_helper'

RSpec.describe "outflows/show", type: :view do
  before(:each) do
    @outflow = assign(:outflow, Outflow.create!(
      :orden_request_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
