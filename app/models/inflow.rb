class Inflow < ApplicationRecord
	has_many :inflow_details, inverse_of: :inflow, dependent: :destroy
	accepts_nested_attributes_for :inflow_details, reject_if: :all_blank, allow_destroy: true
end
