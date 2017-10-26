require 'rails_helper'

RSpec.describe "personal_in_charges/index", type: :view do
  before(:each) do
    assign(:personal_in_charges, [
      PersonalInCharge.create!(
        :name => "Name",
        :last_name => "Last Name",
        :ocupation => "Ocupation"
      ),
      PersonalInCharge.create!(
        :name => "Name",
        :last_name => "Last Name",
        :ocupation => "Ocupation"
      )
    ])
  end

  it "renders a list of personal_in_charges" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Ocupation".to_s, :count => 2
  end
end
