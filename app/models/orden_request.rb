class OrdenRequest < ApplicationRecord
  protokoll :request_number, pattern: '%Y%m%d####'

  belongs_to :personal_in_charge

  has_many :orden_request_details, inverse_of: :orden_request, dependent: :destroy
  accepts_nested_attributes_for :orden_request_details, reject_if: :all_blank, allow_destroy: true

end
