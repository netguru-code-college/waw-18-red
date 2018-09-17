class Review < ApplicationRecord
  belongs_to :user
  belongs_to :place

  validates :rate, numericality: { less_than_or_equal_to: 5, only_integer: true }
end
