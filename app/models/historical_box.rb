class HistoricalBox < ApplicationRecord
  belongs_to :ticket_box

  def self.create_and_associatte_inflow_detail(inflow_detail,ticket_box)
  	historical_box = HistoricalBox.new
  	historical_box.ticket_box_id = ticket_box.id
  	historical_box.status = true
  	historical_box.available = ticket_box.quantity
  	historical_box.not_available = 0
  	historical_box.inflow_detail_id = inflow_detail.id
  	historical_box.save
  end

  def self.update_and_associatte_inflow_detail(inflow_detail,ticket_box)
    historical_box = HistoricalBox.where(ticket_box_id: ticket_box.id, inflow_detail_id: inflow_detail.id).first

    unless historical_box.nil?
      historical_box.status = true
      historical_box.available = ticket_box.quantity
      historical_box.not_available = 0
      historical_box.save
    end
  end

  def put_in_false_others
    ticket_box_id = self.ticket_box_id
    historicals = HistoricalBox.where(ticket_box_id: ticket_box_id)
    historicals.each do |historical|
      historical.status = false
      historical.save
    end
  end
end
