class Shift < ApplicationRecord
  validates :user_id, :presence => true, :numericality => { :only_integer => true }
  validates :start, :presence => true
  validates :finish, :presence => true

  belongs_to :user
end
