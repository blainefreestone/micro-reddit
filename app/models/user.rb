class User < ApplicationRecord
    has_many :posts
    has_many :comments
    
    validates :username, :email, :age, :gender, presence: true
    validates :username, :email, length: { in: 6..20 }
    validates :age, numericality: { in: 12..120 }
    validates :gender, inclusion: { in: %w(male female) }
end
