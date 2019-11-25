class User < ApplicationRecord
  has_many :chickens, foreign_key: :owner_id
  has_many :bookings

  has_many :owner_bookings, through: :chickens, source: :bookings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :avatar, PhotoUploader
end
