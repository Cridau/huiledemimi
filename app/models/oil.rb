class Oil < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, uniqueness: true, presence: true
  validates :note, inclusion: { in: [1, 2, 3, 4, 5] }
end
