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

  def name_with_type
    "#{self.type_of_product.name} - #{self.name}"
  end

  def request_quantity_numbers(quantity)
    ticket_boxes.each do |ticket_box|
      unless ticket_box.historical_box_active.available == 0
        end_number = ticket_box.start_number_available + quantity - 1
        return [ticket_box.start_number_available,end_number]
      end
    end
  end

  # this method returns IDs from ticket boxes, not the number
  def get_boxes_used(quantity)
    boxes = []
    ticket_boxes.each do |ticket_box|
      historical_active = ticket_box.historical_box_active
      unless historical_active.available == 0
        if quantity > historical_active.available
          quantity -= historical_active.available
          boxes.push(ticket_box.id)
        elsif quantity <= historical_active.available
          boxes.push(ticket_box.id)
          return boxes
        end
      end
    end
  end

end
