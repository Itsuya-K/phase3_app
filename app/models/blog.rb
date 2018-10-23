class Blog < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user

  validates :image, presence: true
  validates :title, presence: true
  validates :content, length: { in: 1..500 }

  mount_uploader :image, ImageUploader
end
