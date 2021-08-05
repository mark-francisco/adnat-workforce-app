class Shift < ApplicationRecord
  validates :user_id, :presence => true, :numericality => { :only_integer => true }
  validates :start, :presence => true
  validates :finish, :presence => true
  validate :finish_after_start

  belongs_to :user

  def finish_after_start
    if self.finish < self.start
      errors.add(:finish, "must be after start")
    end
  end

  def shift_date
    return self.start.to_date
  end

  def hours_worked
    total_shift_hours = TimeDifference.between(self.start, self.finish).in_hours
    break_hours = self.break_length / 60

    return total_shift_hours - break_hours
  end

  def shift_cost
    organization = Organization.find_by(:id => self.user.organization_id)

    return self.hours_worked * organization.hourly_rate
  end
end
