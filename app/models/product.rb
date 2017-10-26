class Product < ApplicationRecord
  belongs_to :type_of_product
  has_many :inflow_details
  has_many :ticket_boxes
end
