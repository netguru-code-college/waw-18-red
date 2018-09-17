class Place < ApplicationRecord
  belongs_to :publisher, class_name: 'User'
  has_many :reviews

  validates :rate, numericality: { less_than_or_equal_to: 5,  only_integer: true }
end
