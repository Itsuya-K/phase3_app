class Contact < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :content, length: { in: 1..500 }
end
