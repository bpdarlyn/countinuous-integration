require 'rails_helper'

RSpec.describe "type_of_events/edit", type: :view do
  before(:each) do
    @type_of_event = assign(:type_of_event, TypeOfEvent.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit type_of_event form" do
    render

    assert_select "form[action=?][method=?]", type_of_event_path(@type_of_event), "post" do

      assert_select "input[name=?]", "type_of_event[name]"
    end
  end
end
