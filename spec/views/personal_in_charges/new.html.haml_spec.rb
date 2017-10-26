require 'rails_helper'

RSpec.describe "personal_in_charges/new", type: :view do
  before(:each) do
    assign(:personal_in_charge, PersonalInCharge.new(
      :name => "MyString",
      :last_name => "MyString",
      :ocupation => "MyString"
    ))
  end

  it "renders new personal_in_charge form" do
    render

    assert_select "form[action=?][method=?]", personal_in_charges_path, "post" do

      assert_select "input[name=?]", "personal_in_charge[name]"

      assert_select "input[name=?]", "personal_in_charge[last_name]"

      assert_select "input[name=?]", "personal_in_charge[ocupation]"
    end
  end
end
