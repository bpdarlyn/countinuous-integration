require 'rails_helper'

RSpec.describe "ticket_boxes/index", type: :view do
  before(:each) do
    assign(:ticket_boxes, [
      TicketBox.create!(
        :nro => 2,
        :quantity => 3,
        :product => nil
      ),
      TicketBox.create!(
        :nro => 2,
        :quantity => 3,
        :product => nil
      )
    ])
  end

  it "renders a list of ticket_boxes" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
