class Organization < ApplicationRecord
  validates :name, :presence => true
  validates :hourly_rate, :presence => true, :numericality => true

  has_many :users, :dependent => :nullify
  has_many :shifts, :through => :users, :dependent => :destroy
end
