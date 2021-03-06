require 'rails_helper'

RSpec.describe "type_of_products/new", type: :view do
  before(:each) do
    assign(:type_of_product, TypeOfProduct.new(
      :name => "MyString"
    ))
  end

  it "renders new type_of_product form" do
    render

    assert_select "form[action=?][method=?]", type_of_products_path, "post" do

      assert_select "input[name=?]", "type_of_product[name]"
    end
  end
end
