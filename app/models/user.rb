class User < ApplicationRecord
  has_secure_password
  validates :email_address, :presence => true, :uniqueness => true

  # if a User is destroyed, all of their dependent Shifts will also be destroyed
  has_many :shifts, :dependent => :destroy

  belongs_to :organization, :optional => true
end
