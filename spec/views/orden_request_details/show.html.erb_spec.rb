require 'rails_helper'

RSpec.describe "orden_request_details/show", type: :view do
  before(:each) do
    @orden_request_detail = assign(:orden_request_detail, OrdenRequestDetail.create!(
      :orden_request => nil,
      :product => nil,
      :quantity => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
  end
end
