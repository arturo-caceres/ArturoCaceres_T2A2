class Plant < ApplicationRecord
  belongs_to :user
  belongs_to :buyer, class_name: "User", optional: true
  has_one_attached :image
end
