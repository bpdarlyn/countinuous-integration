class PersonalInCharge < ApplicationRecord
  def full_name
    "#{self.name} #{self.last_name}"
  end
end
