class Blog < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user

  validates :title,  presence: true, length: { maximum: 30 }
  validates :content, length: { in: 1..500 }

  mount_uploader :image, ImageUploader
end
