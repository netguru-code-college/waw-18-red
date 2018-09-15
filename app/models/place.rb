class Place < ApplicationRecord
  belongs_to :publisher, class_name: 'User'
  has_many :reviews
end
