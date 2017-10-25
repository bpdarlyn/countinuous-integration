require 'rails_helper'

RSpec.describe "ticket_boxes/show", type: :view do
  before(:each) do
    @ticket_box = assign(:ticket_box, TicketBox.create!(
      :nro => 2,
      :quantity => 3,
      :product => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
