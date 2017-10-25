require 'rails_helper'

RSpec.describe "type_of_events/show", type: :view do
  before(:each) do
    @type_of_event = assign(:type_of_event, TypeOfEvent.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
