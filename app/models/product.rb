class Product < ApplicationRecord
  belongs_to :type_of_product
  has_many :inflow_details
end
