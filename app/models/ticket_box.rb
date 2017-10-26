class TicketBox < ApplicationRecord
  belongs_to :product
  belongs_to :inflow_detail
  has_many :historical_boxes, dependent: :destroy

  def historical_box_active
    historical_boxes.where(status: true).try(:first)
  end


  def self.create_and_associatte_inflow_detail(inflow_detail)
  	ticket_box = TicketBox.new
	ticket_box.nro = inflow_detail.ticket_boxes_id
	ticket_box.product_id = inflow_detail.product_id
	ticket_box.quantity = inflow_detail.quantity
	ticket_box.start_number = inflow_detail.start_number
	ticket_box.end_number = inflow_detail.end_number
	ticket_box.inflow_detail_id = inflow_detail.id
	ticket_box.save

	HistoricalBox.create_and_associatte_inflow_detail(inflow_detail,ticket_box)
  end

  def self.update_and_associatte_inflow_detail(inflow_detail)
  	ticket_box = TicketBox.where(inflow_detail_id: inflow_detail.id).first
  	unless ticket_box.nil?
  		ticket_box.nro = inflow_detail.ticket_boxes_id
		ticket_box.product_id = inflow_detail.product_id
		ticket_box.quantity = inflow_detail.quantity
		ticket_box.start_number = inflow_detail.start_number
		ticket_box.end_number = inflow_detail.end_number
		ticket_box.save

		HistoricalBox.update_and_associatte_inflow_detail(inflow_detail,ticket_box)
  	end
  end

end
