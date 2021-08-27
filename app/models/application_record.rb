class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validate :dob_record
  def dob_record
    if dob.present? && dob > Date.today
      errors.add(:dob, "can't be in the future")
    end
  end
end
