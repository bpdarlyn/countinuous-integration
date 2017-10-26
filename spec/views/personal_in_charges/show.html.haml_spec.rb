require 'rails_helper'

RSpec.describe "personal_in_charges/show", type: :view do
  before(:each) do
    @personal_in_charge = assign(:personal_in_charge, PersonalInCharge.create!(
      :name => "Name",
      :last_name => "Last Name",
      :ocupation => "Ocupation"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Ocupation/)
  end
end
