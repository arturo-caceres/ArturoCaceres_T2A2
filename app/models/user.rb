class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :plants
  has_many :bought_plants, class_name: "Plant", foreign_key: :buyer_id
  has_one_attached :image
end
