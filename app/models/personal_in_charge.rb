class PersonalInCharge < ApplicationRecord

  has_many :orden_requests

  def full_name
    "#{self.name} #{self.last_name}"
  end
end
