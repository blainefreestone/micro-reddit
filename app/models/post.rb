class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :url, :body, :user, presence: true
  validates :body, length: { minimum: 15 }
end
