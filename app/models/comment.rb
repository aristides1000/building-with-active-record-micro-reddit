class Comment < ApplicationRecord
  belongs_to :author
  belongs_to :post
  validates :body, presence: true
  validates :author_id, presence: true
  validates :post_id, presence: true
end
