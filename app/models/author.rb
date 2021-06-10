class Author < ApplicationRecord
  has_many :post
  has_many :comment
  validates :name, presence: true, length: { in: 4..12 }, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..16 }
end
