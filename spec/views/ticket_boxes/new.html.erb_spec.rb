require 'rails_helper'

RSpec.describe "ticket_boxes/new", type: :view do
  before(:each) do
    assign(:ticket_box, TicketBox.new(
      :nro => 1,
      :quantity => 1,
      :product => nil
    ))
  end

  it "renders new ticket_box form" do
    render

    assert_select "form[action=?][method=?]", ticket_boxes_path, "post" do

      assert_select "input[name=?]", "ticket_box[nro]"

      assert_select "input[name=?]", "ticket_box[quantity]"

      assert_select "input[name=?]", "ticket_box[product_id]"
    end
  end
end
