class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :title, :body, :post, :user, presence: true
  validates :title, length: { in: 6..20 }
  validates :body, length: { minimum: 15 }
end
