class Outflow < ApplicationRecord
  belongs_to :orden_request
  has_many :outflow_details
end
