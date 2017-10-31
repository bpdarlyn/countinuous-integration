class OrdenRequest < ApplicationRecord
  protokoll :request_number, pattern: '%Y%m%d####'

  enum status: [:pending, :processed, :canceled]

  belongs_to :personal_in_charge
  has_one :outflow
  has_many :products, :through => :orden_request_details
  has_many :orden_request_details, inverse_of: :orden_request, dependent: :destroy
  accepts_nested_attributes_for :orden_request_details, reject_if: :all_blank, allow_destroy: true

end
