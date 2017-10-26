class TicketBox < ApplicationRecord
  belongs_to :product
  has_many :historical_boxes

  def self.create_and_associatte_inflow_detail(inflow_detail)
  	ticket_box = TicketBox.new
	ticket_box.nro = inflow_detail.ticket_boxes_id
	ticket_box.product_id = inflow_detail.product_id
	ticket_box.quantity = inflow_detail.quantity
	ticket_box.save

	HistoricalBox.create_and_associatte_inflow_detail(inflow_detail,ticket_box)
  end
end
