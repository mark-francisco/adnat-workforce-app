class Organization < ApplicationRecord
  validates :name, :presence => true
  validates :hourly_rate, :presence => true, :numericality => true

  has_many :users
  has_many :shifts, :through => :users
end
