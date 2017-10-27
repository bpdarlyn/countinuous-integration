class OrdenRequest < ApplicationRecord
  protokoll :request_number, pattern: '%Y%m%d####'

  belongs_to :personal_in_charge
end
