class OrdenRequest < ApplicationRecord
  protokoll :request_number, pattern: '%Y%m%d####'
end
