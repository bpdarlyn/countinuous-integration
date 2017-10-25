require 'rails_helper'

RSpec.describe "outflow_details/show", type: :view do
  before(:each) do
    @outflow_detail = assign(:outflow_detail, OutflowDetail.create!(
      :outflow => nil,
      :product => nil,
      :quantity => "9.99",
      :start_number => "9.99",
      :end_number => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
