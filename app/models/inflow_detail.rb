class InflowDetail < ApplicationRecord
  belongs_to :product
  belongs_to :inflow
  has_one :ticket_box, dependent: :destroy
  validates_uniqueness_of :product_id, scope: [:product_id, :ticket_boxes_id]

end
