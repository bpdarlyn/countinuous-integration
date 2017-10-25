require 'rails_helper'

RSpec.describe "type_of_products/edit", type: :view do
  before(:each) do
    @type_of_product = assign(:type_of_product, TypeOfProduct.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit type_of_product form" do
    render

    assert_select "form[action=?][method=?]", type_of_product_path(@type_of_product), "post" do

      assert_select "input[name=?]", "type_of_product[name]"
    end
  end
end
