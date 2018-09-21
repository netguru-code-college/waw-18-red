class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews
  has_many :places, foreign_key: 'publisher_id'

  def places_created_today
    # places.where('created_at BETWEEN beginning_of_day AND Time.current')
    places.where(created_at: Time.current.beginning_of_day..Time.current.end_of_day)
  end
end
