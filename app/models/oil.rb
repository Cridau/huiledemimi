class Oil < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :note, inclusion: { in: [1, 2, 3, 4, 5] }
end
