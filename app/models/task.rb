class Task < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :assingments
  has_many :users, through: :assingments, dependent: :destroy
end
