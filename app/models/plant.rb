class Plant < ApplicationRecord
  belongs_to :user
  belongs_to :buyer, class_name: "User", optional: true
  has_one_attached :image

  # Used to filter plants
  scope :filter_by_name, ->(name) { where("lower(name) like ?", "%#{name.downcase}%") }
end
