class Shift < ApplicationRecord
  validates :user_id, :presence => true, :numericality => { :only_integer => true }

  belongs_to :user
end
