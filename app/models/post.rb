class Post < ApplicationRecord
  belongs_to :author
  has_many :comments
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
  validates :author_id, presence: true
end
