class Product < ApplicationRecord
  belongs_to :type_of_product
  has_many :inflow_details
  has_many :ticket_boxes

  def total_quantity_ticket_boxes
  	if ticket_boxes.count > 0
  		ticket_boxes.sum(:quantity) 
  	else
  		0
  	end
  end

  def total_available_tickets
  	if ticket_boxes.count > 0
  		availables = 0
  		ticket_boxes.each do |ticket_box|
  			availables += ticket_box.historical_box_active.available
  		end
  		availables
  	else
  		0
  	end
  end

  def total_not_available_tickets
  	if ticket_boxes.count > 0
  		not_availables = 0
  		ticket_boxes.each do |ticket_box|
  			not_availables += ticket_box.historical_box_active.not_available
  		end
  		not_availables
  	else
  		0
  	end
  end
end
