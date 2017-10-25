require 'rails_helper'

RSpec.describe "ticket_boxes/edit", type: :view do
  before(:each) do
    @ticket_box = assign(:ticket_box, TicketBox.create!(
      :nro => 1,
      :quantity => 1,
      :product => nil
    ))
  end

  it "renders the edit ticket_box form" do
    render

    assert_select "form[action=?][method=?]", ticket_box_path(@ticket_box), "post" do

      assert_select "input[name=?]", "ticket_box[nro]"

      assert_select "input[name=?]", "ticket_box[quantity]"

      assert_select "input[name=?]", "ticket_box[product_id]"
    end
  end
end
