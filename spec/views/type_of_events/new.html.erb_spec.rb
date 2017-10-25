require 'rails_helper'

RSpec.describe "type_of_events/new", type: :view do
  before(:each) do
    assign(:type_of_event, TypeOfEvent.new(
      :name => "MyString"
    ))
  end

  it "renders new type_of_event form" do
    render

    assert_select "form[action=?][method=?]", type_of_events_path, "post" do

      assert_select "input[name=?]", "type_of_event[name]"
    end
  end
end
