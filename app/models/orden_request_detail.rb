class OrdenRequestDetail < ApplicationRecord
  belongs_to :orden_request
  belongs_to :product
end
