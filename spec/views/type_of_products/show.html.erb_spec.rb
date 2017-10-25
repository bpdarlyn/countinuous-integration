require 'rails_helper'

RSpec.describe "type_of_products/show", type: :view do
  before(:each) do
    @type_of_product = assign(:type_of_product, TypeOfProduct.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
