class Inflow < ApplicationRecord
	has_many :inflow_details, inverse_of: :inflow, dependent: :destroy
	accepts_nested_attributes_for :inflow_details, reject_if: :all_blank, allow_destroy: true

	after_create :create_ticket_boxes_and_historical

	after_update :update_ticket_boxes_and_historical

	def create_ticket_boxes_and_historical
		self.inflow_details.each do |inflow_detail|
			unless inflow_detail.ticket_boxes_id.nil?
				TicketBox.create_and_associatte_inflow_detail(inflow_detail)
			end
		end
	end	

	def update_ticket_boxes_and_historical
		self.inflow_details.each do |inflow_detail|
			unless inflow_detail.ticket_boxes_id.nil?
				TicketBox.update_and_associatte_inflow_detail(inflow_detail)
			end
		end
	end
end
