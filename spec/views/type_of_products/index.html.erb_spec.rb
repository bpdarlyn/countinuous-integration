require 'rails_helper'

RSpec.describe "type_of_products/index", type: :view do
  before(:each) do
    assign(:type_of_products, [
      TypeOfProduct.create!(
        :name => "Name"
      ),
      TypeOfProduct.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of type_of_products" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
