class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, uniqueness: true, presence: true, length: { maximum: 255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  has_many :blogs
  has_many :favorites, dependent: :destroy
  has_many :favorite_blogs, through: :favorites, source: :blog

  before_validation { email.downcase! }
  has_secure_password

  mount_uploader :image, ImageUploader
end
