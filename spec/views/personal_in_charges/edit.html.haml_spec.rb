require 'rails_helper'

RSpec.describe "personal_in_charges/edit", type: :view do
  before(:each) do
    @personal_in_charge = assign(:personal_in_charge, PersonalInCharge.create!(
      :name => "MyString",
      :last_name => "MyString",
      :ocupation => "MyString"
    ))
  end

  it "renders the edit personal_in_charge form" do
    render

    assert_select "form[action=?][method=?]", personal_in_charge_path(@personal_in_charge), "post" do

      assert_select "input[name=?]", "personal_in_charge[name]"

      assert_select "input[name=?]", "personal_in_charge[last_name]"

      assert_select "input[name=?]", "personal_in_charge[ocupation]"
    end
  end
end
