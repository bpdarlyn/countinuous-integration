class HistoricalBox < ApplicationRecord
  belongs_to :ticket_box

  def self.create_and_associatte_inflow_detail(inflow_detail,ticket_box)
  	historical_box = HistoricalBox.new
  	historical_box.ticket_box_id = ticket_box.id
  	historical_box.status = true
  	debugger
  	historical_box.available = ticket_box.quantity
  	historical_box.not_available = 0
  	historical_box.inflow_detail_id = inflow_detail.id
  	historical_box.save
  end
end
